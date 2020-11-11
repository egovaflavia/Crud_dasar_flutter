<?php
include "koneksi.php";

$nama_barang = $_POST['nama_barang'];
$jumlah_barang = $_POST['jumlah_barang'];
$satuan_barang = $_POST['satuan_barang'];
$harga_jual = $_POST['harga_jual'];
$harga_modal = $_POST['harga_modal'];
$id_barang = $_POST['id_barang'];

$data = $con->query("UPDATE tb_barang SET nama_barang='$nama_barang', satuan_barang='$satuan_barang',jumlah_barang='$jumlah_barang',harga_jual='$harga_jual', harga_modal='$harga_modal' WHERE id_barang='$id_barang' ");