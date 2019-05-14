<?php
include_once('../include/db.php');

$numperpage = 10 ;
$page = 0; 
$offset = 0;

// $test = array("method"=>"list", "page"=> 0) ; 
// $gget = json_encode($test) ;
// $_GET["fields"] = $gget ; 
// echo "<pre>"; print_r($_POST);



try{

	//	Return List of all Agents
	//	=========================================================================================

	if($_GET && isset($_GET["fields"]) && !empty($_GET["fields"])){

		$fields = json_decode($_GET["fields"] , true) ; 
	 
		if( is_array($fields) && !empty($fields) && $fields["method"] == "list"){
			$page = intval($fields["page"]);
		    $offset = $numperpage * $page ;

		    $sql = "SELECT * from test.agents  LIMIT $offset , $numperpage " ;
			$params = array() ;
			$res = getResults($sql , $params );

			ob_clean();
			echo json_encode($res);
			exit(0);		
		}

	}


	// $test = array("method"=>"add", "name"=> "uyen" , "address" =>'123' , "something" =>"something value") ; 
	// $gget = json_encode($test) ;
	// echo $gget;exit(0);
	// $_POST["fields"] = $gget ; 
	// echo "<pre>"; print_r($_POST);


	//	Ability to Add New Agent
	//	=========================================================================================
	if($_POST && isset($_POST["fields"])  && !empty($_POST["fields"])){
		$fields = json_decode($_POST["fields"] , true) ;

		if( is_array($fields) && !empty($fields) && $fields["method"] == "add"){

			unset($fields["method"]) ;
			$key = array();
			$value = array()  ; 
			$pad = array() ; 

			$allowed = array('name','address','city','state','zipCode','tier','phone_primary','phone_mobile') ; 
			foreach($fields as $k=>$v){
				if(!empty($v) && in_array($k, $allowed)){
					$key[] = $k ;
					$value[] = $v;  
					$pad[] = "?";
				}
			}

			if(!empty($key) && count($key) == count($value)){

				$sql = "INSERT INTO `agents`(`_id`, " . implode( "," , $key). ") VALUES (null, " . implode(",", $pad). ")" ;
				$params = $value ;
				$res = getResults($sql , $params );

				ob_clean();
				echo json_encode(array("success"));
				exit(0);		

			}
		}	
	} 
}catch(Exception $e){
	ob_clean();
	echo json_encode(array("something wrong"));
	exit(0);		
}

	ob_clean();
	echo ''; 
	exit(0);
?>