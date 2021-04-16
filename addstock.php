<?php
 session_start();
 if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
    header("Location: index.php");
    exit;
}
require_once "config.php";
$stock = array('NSE:BSE1085697412','BOMPICKLE:5326484545','NSE:NAZARA456456','NSE:KALYANKJIL546546','GARGIMARCO:500325546','TYO:4650456546','CVE:RECO132','BATS:1582REPO1SDAE','FRALTP:8765TATA','BEML:634751KYC');
 for ($k = 0; $k < 10; $k++) {
  $CurrentPrice = rand(10,99999); 
  $int = rand(0,9);
  $StockName = $stock[$int];
  $insert_sql = "INSERT INTO `stockupdates` (`StockName`, `CurrentPrice`, `UpdateDateTime`) VALUES ('".$StockName."','".$CurrentPrice."','".date('Y-m-d H:i:s')."')";
  mysqli_query($conn,$insert_sql);
}

echo 'Stock is added. Close current tab';

?>

