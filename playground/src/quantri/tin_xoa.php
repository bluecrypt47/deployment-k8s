<?php
require_once "../class/quantritin.php";
$qt = new quantritin();
$qt->checkLogin();

$idTin = $_GET['idTin'];
settype($idTin,"int");
$kq = $qt->Tin_Xoa($idTin);
header("location: index.php?role=" . $_SESSION['login_level'] . "&p=tin_ds");
?>
