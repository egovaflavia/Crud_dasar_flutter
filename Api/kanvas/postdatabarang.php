<?php
include "koneksi.php";

$nama_barang = $_POST['nama_barang'];
$jumlah_barang = $_POST['jumlah_barang'];
$satuan_barang = $_POST['satuan_barang'];
$harga_jual = $_POST['harga_jual'];
$harga_modal = $_POST['harga_modal'];

$data = $con->query("INSERT INTO tb_barang VALUES ('','$nama_barang','$satuan_barang','$jumlah_barang','$harga_jual','$harga_modal')");