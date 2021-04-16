<?php
 session_start();
 $responseJson = array();	
 if(!isset($_SESSION['username']) || empty($_SESSION['username'])){    
   $responseJson['flag'] = 'fail';
    echo json_encode($responseJson);
	exit;
 }
require_once "config.php";
$lastValue = $_POST['lastValue'];

$result = mysqli_query($conn,"SELECT * FROM stockupdates WHERE StockId > ".$lastValue."  LIMIT 1");
if (mysqli_num_rows($result) > 0) {
	$row = mysqli_fetch_array($result);  
	$responseJson['flag'] = 'success'; 
	$responseJson['rowData'] = $row;		
} else {
	$responseJson['flag'] = 'empty'; 
}

echo json_encode($responseJson);
exit;

?>

