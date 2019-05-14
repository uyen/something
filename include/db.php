<?php 
error_reporting(0);
$conf = parse_ini_file('../app.ini'); 
$confxxx = array('host'=>'mysql:host=localhost;dbname=test', 
 				'user' => 'admin', 
 				'pass'=>''); 



function getResults($sql, $params = array() ){
	global $conf;
	$results = array();

	try {
	    $dbh = new PDO($conf["host"] , $conf["user"] , $conf["pass"] );
	    
		$sth = $dbh->prepare($sql);
		$sth->execute(array_values($params));
		$results = $sth->fetchAll(PDO::FETCH_ASSOC ); 
 
	    $dbh = null;
	} catch (PDOException $e) {
	   	
	}
	return $results;
}
?>
