<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
  header('Location: logn.php');
}
require_once('connect.php');
?>
<!doctype html>
<html>
  <head>
  <style type="text/css">
    * {font-family: Arial, Helvetica, sans-serif;}
    html, body {height: 100%;}
    .heading {font-size: 250%; font-weight: bold; margin: auto; width: 75%; text-align: center;}
    .text {margin: auto; width: 60%; text-align: center; border-style: solid; border-width: 1px}
    .showy {font-style: italic; font-size: 110%;}
    .output {text-align: left; border-style: none;}
    .title {font-size: 150%; font-weight: bold;}
    .lead {font-size: 105%; font-style: italic;}
    .placeholder {display: flex; align-items: center; justify-content: center; border-style: solid; border-width: 1px; height: 150px}
    .comment {font-size: 70%;}
  </style>
  </head>
  <body>
  <a href="logn.php">Logout</a><br/><br/>
  <div class="heading">
    Portfolio Gerhard L. Uderzo
  </div>

  <div class="text showy">
    <p>Beste bezoeker,
    <br/>Dit portfolio is gedurende de periode 2016-2018 op het Grafisch Lyceum Utrecht gemaakt.
    <br/>Met vriendelijke groet,
    <br/>Gerhard
    </p>
  </div>
  <br/>
  <div class="text ">
    <table>
    <?php
      $stmt = $conn->prepare('SELECT * FROM portfolio_item');
      if($stmt->execute()) {
        // Your code here to fetch portfolio-items per row ($row)

      }
      $conn = null;
    ?>
    </table>
  </div>
</body>
</html>
