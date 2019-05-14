<?php
include_once('../include/db.php');

$numperpage = 10 ;
$page = 0; 
$offset = 0;
 

try{

	// $test = array("method"=>"getCustomerByAgentID", "id"=> 101) ; 
	// $gget = json_encode($test) ;
	// echo $gget ; exit(0);
	// $_GET["fields"] = $gget ; 
	// echo "<pre>"; print_r($_POST);

	//	List all customers associated with a given Agent's INT ID
	//	=========================================================================================
	if($_GET && isset($_GET["fields"]) && !empty($_GET["fields"])){

		$fields = json_decode($_GET["fields"] , true) ; 
	 
		if( is_array($fields) && !empty($fields) && $fields["method"] == "getCustomerByAgentID"
			&& isset($fields["id"]) && !empty($fields["id"])){

			$id = intval($fields["id"]) ;

		    $sql = "SELECT * FROM `customers` WHERE `agent_id` = ? " ;
			$params = array($id) ;
			$res = getResults($sql , $params );

			ob_clean();
			echo json_encode($res);
			exit(0);		
		}

	}


	// $test = array("method"=>"removeCustomer", "id" => 101 ) ; 
	// $gget = json_encode($test) ;
	// echo $gget; 
	// $_POST["fields"] = $gget ; 
	// echo "<pre>"; print_r($_POST);
	

	if($_POST && isset($_POST["fields"])  && !empty($_POST["fields"])){
		$fields = json_decode($_POST["fields"] , true) ;


		//	Ability to Delete Existing Customer
		//	=========================================================================================
		if( is_array($fields) && !empty($fields) && $fields["method"] == "removeCustomer" 
			&& isset($fields["id"]) && !empty($fields["id"])){

			$id = intval($fields["id"]) ;
			$sql = "DELETE FROM `customers` WHERE _id=?" ;
			$params = array($id)  ;
			$res = getResults($sql , $params );

			$sql = "DELETE FROM `customer_tag` WHERE `customer_id`=?" ;
			$res = getResults($sql , $params );

			ob_clean();
			echo json_encode(array("success"));
			exit(0);

		}


		//	Ability to Add New Customer
		//	=========================================================================================
		if( is_array($fields) && !empty($fields) && $fields["method"] == "addCustomer" 
			&& isset($fields["id"]) && !empty($fields["id"])){

			$id = intval($fields["id"]) ;

			unset($fields["id"]) ;
			unset($fields["method"]) ;

			$key = array();
			$key[] = 'agent_id'; 
			$key[] = 'guid'; 
 			
 			$value = array() ; 
			$value[] = $id;
			$value[] = md5(time());

			$pad = array() ;
			$pad[] = "?";
			$pad[] = "?";


			if(isset($fields["isActive"])){
				if(($fields["isActive"]==1 || $fields["isActive"]== true)){
					$fields["isActive"] = 1; 
				}else{
					$fields["isActive"] = 0; 	
				}
				
			}

			// 	setting key / value 
			$allowed = array('isActive', 'balance','age','eyeColor','name_first','name_last','company' , 'email', 'phone','address','registered','latitude','longitude') ; 
			foreach($fields as $k=>$v){
				if(!empty($v) && in_array($k, $allowed)){
					$key[] = $k ;
					$value[] = $v;  
					$pad[] = "?";
				}
			}

			
			// 	Building query
			if(!empty($key) && count($key)>1 && count($key) == count($value)){

				$sql = "INSERT IGNORE INTO `customers`(`_id`,  " . implode( "," , $key). ") VALUES (null,  " . implode(",", $pad). ")" ;
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