<?php
require_once "config.php";
$usernameerror = '';
$passworderror = '';
$loginerror = '';

/*Register Process*/
//print_r($_POST); die;

session_start();
 if(isset($_SESSION['username']) || !empty($_SESSION['username'])){
    header("Location: stock.php");
    exit;
}
if(isset($_POST["reg_username"])){
	$error = false;	 
	$username = filter_input(INPUT_POST,"reg_username",FILTER_SANITIZE_SPECIAL_CHARS);	
	if (!filter_input(INPUT_POST, "reg_username", FILTER_SANITIZE_SPECIAL_CHARS)) {
	   $error = true;
	}  
	if($username == ''){
		$usernameerror = 'Please enter Username';
		$error = true;
	}
	$password = $_POST["reg_password"];
	if($password == ''){
		$passworderror = 'Please enter Password';
		$error = true;
	}
	if(!$error ){
		$select_sql = "SELECT `UserName`, `Password`  FROM `users` WHERE `UserName` = '".$username."' ";
		$res = mysqli_query($conn,$select_sql);
		if (mysqli_num_rows($res) == 0) {
			$row = mysqli_fetch_assoc($res); 
			$insert_sql = "INSERT INTO `users` (`UserName`, `Password`) VALUES ('".$username."','".$password."')";
			mysqli_query($conn,$insert_sql);

			        	  
			$_SESSION["username"] = $username;    
			header("Location: stock.php");
		} else {
			$registererror = '<p class="regerror">Already exists account with <b>'.$username.'</b> Username. Please try with different Username</p>' ;
			echo $registererror;
		}
		 
	} else{
		$registererror ='<p class="regerror">Invalid Username or password added. Please try with appropriate values.</p>' ;
		echo $registererror;
	}
}
/*Login process*/
if(isset($_POST["username"])){
	$error = false;
	 
	$username = filter_input(INPUT_POST,"username",FILTER_SANITIZE_SPECIAL_CHARS);
	if (!filter_input(INPUT_POST, "username", FILTER_SANITIZE_SPECIAL_CHARS)) {
	   $error = true;
	} 
	if($username == ''){
		$usernameerror = 'Please enter Username';
		$error = true;
	}
	$password = $_POST["password"];
	if($password == ''){
		$passworderror = 'Please enter Password';
		$error = true;
	}
	if(!$error ){
		$select_sql = "SELECT `UserName`, `Password`  FROM `users` WHERE `UserName` = '".$username."'  and  `Password` = '".$password."' ";
		$res = mysqli_query($conn,$select_sql);
		if (mysqli_num_rows($res) > 0) {
			$row = mysqli_fetch_assoc($res); 
			 	  
			$_SESSION["username"] = $username;    
			header("Location: stock.php");
		} else {
			$loginerror = '<p class="regerror">Username and Password are not match, Please try again.</p>';
			echo $loginerror;
		}
	}  else {
		$loginerror ='<p class="regerror">Invalid Username or password added. Please try with appropriate values.</p>' ;
		echo $loginerror;
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/stock.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container" id="container">	
		<div class="form-container sign-up-container">
			<form action="index.php" method="post" class="register_form">
				<h1>Create Account</h1>				 
				<input type="text"  class="reg_username" name="reg_username"  placeholder="Enter Username" />
				<input type="password"  placeholder="Enter Password" class="reg_password" name="reg_password" />
				<p class="reg_error"></p>
				<input type="button"  class="sign_up" name="register" value="Sign Up">
				 
			</form>
		</div> 
		<div class="form-container sign-in-container">
			<form action="index.php" method="post" class="login_form">
				<h1>Sign in</h1>

				<span>&nbsp;</span>
				<input type="text"  class="username" name="username"  placeholder="Enter Username" />
				<input type="password"  placeholder="Enter Password" class="password" name="password" />
				<p class="login_error"></p>
				<input type="button"  class="sign_in" name="login" value="Sign In">				 
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">	
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>		 
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start journey with us</p>
					<button  type="button" class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
 
</body>
</html>

