<?php

	$username = $_POST['username'];
	$firstName = $_POST['firstName'];
	$age = $_POST['age'];
	$lastName = $_POST['lastName'];
	$gender = $_POST['gender'];
	$password = md5($_POST['password']);
	$niveau_sport = $_POST['niveau_sport'];
	$mail = $_POST['mail'];

	// Database connection
	$conn = new mysqli('localhost','hatim.hebboul','Hatim1997@','iManger');
	if($conn->connect_error){
		die("Connection Failed : ". $conn->connect_error);
	} else {

    $Insert = "INSERT INTO user(username, firstName, lastName, password, age, gender, niveau_sport,mail)
		values('$username', '$firstName', '$lastName', '$password', '$age','$gender', '$niveau_sport','$mail')";
	if ($conn->query($Insert)){
		echo "Félicitations ! Votre inscription a été prise en compte.";
	}
	else{
		echo "Error: ". $Insert ."
	". $conn->error;
}
$conn->close();
	}
?>
