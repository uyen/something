<?php
include_once('../include/db.php');

// $test = array("method"=>"getAgentByID", "id"=> 101 ) ; 
// $gget = json_encode($test) ;
// $_GET["fields"] = $gget ; 
// echo "<pre>"; print_r($_GET);

try{

	//	Retrieve all Agent Details by agent's INT ID
	//	=========================================================================================
	if($_GET && isset($_GET["fields"]) && !empty($_GET["fields"])){

		$fields = json_decode($_GET["fields"] , true) ; 
	 
		if( is_array($fields) && !empty($fields) && $fields["method"] == "getAgentByID"){
			$id = intval($fields["id"]); 

		    $sql = "SELECT * from test.agents where _id=? " ;
			$params = array($id) ;
			$res = getResults($sql , $params );

			ob_clean();
			echo json_encode($res);
			exit(0);		
		}

	}





	// $test = array("method"=>"updateAgentByID", "name"=> "uyen" , "id"=>101 , "something"=>"else") ; 
	// $gget = json_encode($test) ;
	// echo $gget; 
	// $_POST["fields"] = $gget ; 
	// echo "<pre>"; print_r($_POST); 


	//	Update Any/All Fields by Agent's INT ID
	//	=========================================================================================
	if($_POST && isset($_POST["fields"])  && !empty($_POST["fields"])){
		$fields = json_decode($_POST["fields"] , true) ;

		if( is_array($fields) && !empty($fields) && $fields["method"] == "updateAgentByID" 
			&& isset($fields["id"]) && !empty($fields["id"])){

			$id = intval($fields["id"]) ; 
			unset($fields["id"]) ;
			$key = array();
			$value = array() ; 


			$allowed = array('name','address','city','state','zipCode','tier','phone_primary','phone_mobile') ; 
			foreach($fields as $k=>$v){
				if(!empty($v) && in_array($k, $allowed)){
					$key[] = '`' .$k. '` = ? ' ;
					$value[] = $v; 
				}
			}

			if(!empty($key) && count($key) == count($value)){

				$value[] = $id ; 

				$sql = "UPDATE `agents` SET " . implode(",", $key). " where `_id`=? " ;
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