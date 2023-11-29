<?php
$strConnection = mysqli_connect('localhost', 'root', '123', 'btth01_cse485');
if (!$strConnection)
  die('Can not connection');
mysqli_set_charset($strConnection, 'utf8');
?>