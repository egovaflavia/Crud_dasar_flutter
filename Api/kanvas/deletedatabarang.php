<?php
include "koneksi.php";

$id_barang = $_POST['id_barang'];

$data = $con->query("DELETE FROM tb_barang WHERE id_barang='$id_barang'");