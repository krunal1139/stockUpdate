<?php
 session_start();
 if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
    header("Location: index.php");
    exit;
}
require_once "config.php";
$result = mysqli_query($conn,"SELECT * FROM stockupdates  ORDER BY StockId DESC LIMIT 0,10");
?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/stock.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="stock_body">
 
<section>
 <a class="logout" href="logout.php" >logout</a>

  <h1 class="error_message"></h1>
  <div class="main">
	  <h1>Welcome <?=$_SESSION["username"]?>  </h1>
	  <h1>Live Stock Updates</h1>
	  <div class="random_stock_add_section">
	 	 <a target="_blank" href="addstock.php" class="add_stock_button">Add Stock</a>
	 </div>
	  <div class="tbl-header">
	    <table cellpadding="0" cellspacing="0" border="0">
	      <thead>
	        <tr>
	          <th>Stock Name</th>
	          <th class="price_column">Current Price</th>
	          <th>Date </th>           
	        </tr>
	      </thead>
	    </table>
	  </div>
	  <div class="tbl-content">
	    <table cellpadding="0" cellspacing="0" border="0">
	      <tbody class="stockData">
	      	<?php 
	      	if (mysqli_num_rows($result) > 0) { 
	      	$firstStock = mysqli_fetch_assoc($result);
	      	while ($row = mysqli_fetch_assoc($result)) { ?>
	        <tr>
	          <td><?php echo $row['StockName']; ?></td>
	          <td class="price_column" >$<?php echo $row['CurrentPrice']; ?></td>
	          <td><?php echo $row['UpdateDateTime']; ?></td>         
	        </tr>
	       <?php } ?>
	       <input type="hidden" class="lastValue" value="<?=$firstStock['StockId']?>" >
	        <?php } else { ?>
	       <tr class="empty"><td colspan="3">Stock not found.</td></tr>
	         <input type="hidden" class="lastValue" value="0" >
	   		<?php }  ?>
	      </tbody>
	    </table>

	  </div>
	</div>
</section>
 
</body>
</html>