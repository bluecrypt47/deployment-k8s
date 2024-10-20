<?php
require_once "../class/quantritin.php";
$qt = new quantritin();
$qt -> checkLogin();

$idTL = $_GET['idTL']; settype($idTL, "int");
$kq = $qt ->TheLoai_Xoa($idTL);
$location = "location: index.php?role=" . $_SESSION['login_level'] . "&p=theloai_ds";
header($location);
?>
