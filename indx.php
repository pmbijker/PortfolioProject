<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
  header('Location: logn.php');
}
require_once('connect.php');
?>
<!doctype html>
<html>
<body>
  <a href="logn.php">Logout</a><br/><br/>
  <h1>Portfolio</h1>
<p>
De volgende gebruikers in de database:
</p>
<?php
$stmt = $conn->prepare('SELECT * FROM user WHERE user_id != ?');
$stmt->bindParam(1, $value);
$value = 99;
if ($stmt->execute()) {
  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo '<br/>Gebruikers id: '.$row['user_id'];
    echo '<br/>Gebruikers e-mail: '.$row['user_email'];
    echo '<br/>Gebruikers wachtwoord: '.$row['user_password'];
  }
}
?>
</body>
</html>
