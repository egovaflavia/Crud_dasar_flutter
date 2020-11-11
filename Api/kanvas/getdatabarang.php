<?php
include "koneksi.php";
$res = array();
$data = $con->query("SELECT * FROM tb_barang");
foreach($data as $a)
{
	$res[] = $a;
}

echo json_encode($res);