<?php
include_once('../include/db.php'); 

try{


	// $test = array("method"=>"listCustomer","page"=>0, "pagesize"=>12,"columns"=>'_id,company,blabla,guid') ; 
	// $gget = json_encode($test) ;
	// echo $gget ; 
	// $_GET["fields"] = $gget ; 
	// echo "<pre>"; print_r($_GET);

	//	Return all customer data from our system.
	//	=========================================================================================
	if($_GET && isset($_GET["fields"]) && !empty($_GET["fields"])){

		$fields = json_decode($_GET["fields"] , true) ; 
	 
		if( is_array($fields) && !empty($fields) && $fields["method"] == "listCustomer"){

			$page = intval($fields["page"]) ;
			$pagesize = intval($fields["pagesize"]) ;
			if(empty($pagesize) || intval($pagesize)<10 ){
				$pagesize = 10 ; 
			}elseif (intval($pagesize)>10  && intval($pagesize)<=50) {
				$pagesize = intval($pagesize) ; 
			}else{
				$pagesize = 50  ; 	// set max value,  
			}

			 
		    $offset = $pagesize * $page ;


			
			// Only if matching ... 
			$allowed = array('_id', 'agent_id', 'guid', 'isActive', 'balance','age','eyeColor','name_first','name_last','company' , 'email', 'phone','address','registered','latitude','longitude') ; 
			
			$select_columns = array(); 

			if(!empty($fields["columns"])){
				$columns = explode(",", $fields["columns"]);
				if(is_array($columns) && !empty($columns)){
					foreach($columns as $c){
						$c = trim($c) ; 
						if(!empty($c) && in_array($c, $allowed)){
							$select_columns[] = $c ;
						}
					}
				}
			}

			if(!empty($select_columns)){
			    $sql = "SELECT `" . implode("`,`", $select_columns). "` FROM `customers` LIMIT $offset , $pagesize  " ;
				$params = array($id) ;
				$res = getResults($sql , $params );

				ob_clean();
				echo json_encode($res);
				exit(0);						
			}

		}

	}

	// $test = array("method"=>"updateCustomerById", "company"=> "uyen" , "id"=>9990 , "something"=>"else" , 'age'=>18, "tags"=>"tag1,tag2") ; 
	// $gget = json_encode($test) ;
	// echo $gget; 
	// $_POST["fields"] = $gget ; 
	// echo "<pre>"; print_r($_POST); 


	//	Provide ability to Update Customer Information
	//	=========================================================================================
	if($_POST && isset($_POST["fields"])  && !empty($_POST["fields"])){
		$fields = json_decode($_POST["fields"] , true) ;

		if( is_array($fields) && !empty($fields) && $fields["method"] == "updateCustomerById" 
			&& isset($fields["id"]) && !empty($fields["id"])){

			$id = intval($fields["id"]) ; 
			unset($fields["id"]) ;
			$key = array();
			$value = array() ; 


			$allowed = array( 'agent_id', 'isActive', 'balance','age','eyeColor','name_first','name_last','company' , 'email', 'phone','address','registered','latitude','longitude') ; 
			foreach($fields as $k=>$v){
				if(!empty($v) && in_array($k, $allowed)){
					$key[] = '`' .$k. '` = ? ' ;
					$value[] = $v; 
				}
			}

			if(!empty($key) && count($key) == count($value)){

				$value[] = $id ; 

				$sql = "UPDATE `customers` SET " . implode(",", $key). " where `_id`=? " ;
				$params = $value ;
				$res = getResults($sql , $params );
	

			}

			//	if tags is given in the list ... 
			if(!empty($fields["tags"])){
				$tags = explode(",", $fields["tags"]); 

				//	deleting all exs tags ass with this cust
				getResults("DELETE FROM customer_tag  WHERE `customer_id`=? ", array($id));

				if(!empty($tags)){
					foreach($tags as $tag){
						$tag = trim($tag) ;
						if(!empty($tag)){
							getResults("INSERT IGNORE INTO tags (`name`) values (?) " , array($tag)) ;
							$tag_id = getResults("select * from tags where name = ?  " , array($tag)) ;
							if(!empty($tag_id) && $tag_id[0]["_id"] > 0){
								getResults("INSERT IGNORE INTO customer_tag (`customer_id`, `tag_id`) values (?, ? ) " , 
									array($id , $tag_id[0]["_id"] )) ;
							}
						}
					}
				}
			}


			ob_clean();
			echo json_encode(array("success"));
			exit(0);	

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