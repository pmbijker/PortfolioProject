<?php
try {
  $conn = new PDO('mysql:host=localhost;dbname=portfolio', 'root', '');
} catch (PDOException $e) {
    echo "Fout in databaseafhandeling: ".$e->getMessage();
    die();
}
?>
