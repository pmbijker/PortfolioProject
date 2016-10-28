<?php
session_start();
$_SESSION['loggedin'] = null;
require_once('cnnct.php');
?>
<!doctype html>
<html>
<body>
<?php
if (!isset($_POST['submit'])) { ?>
	<!-- Formulier -->
	<form method="post">
	<h2>Beste gebruiker, vul hier je e-mail en wachtwoord in </h2>
	<table>
		<tr><td>E-mail</td><td><input name="email" type="text"></td></tr>
		<tr><td>Wachtwoord</td><td><input name="password" type="password"></td></tr>
		<tr><td>&nbsp;</td><td><input type="submit" name="submit" value="Verzenden"></td></tr>
	</table>
	</form>
	<?php
}else{
	// Verwerking
	$email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
	$password = filter_var($_POST['password'], FILTER_SANITIZE_STRING);
	$password = hash('sha256', $password);

	if (!empty($email) && !empty($password)) {
		$stmt = $conn->prepare(
			'SELECT * FROM user
			WHERE user_email = :email
			AND user_password = :password ');

		if ($stmt->execute([
			':email' => $email,
			':password' => $password
			]
		)) {
		  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
		    $_SESSION['loggedin'] = true;
		    header('Location: indx.php');
		  }
		  echo 'Helaas, niet ingelogd';
		}
	}else{
		echo 'Alle velden moeten ingevuld worden!';
	}
}
?>
</body>
</html>
