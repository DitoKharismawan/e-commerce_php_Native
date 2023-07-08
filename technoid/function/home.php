<?php
session_start();
require 'koneksi.php';
require 'auth.php';
require 'bantuan.php';
require 'cart.php';


function home()
{
    global $konek;


    $pd = mysqli_query($konek, "SELECT * FROM produk ORDER BY id_produk DESC LIMIT 20");
    $pdlaris = mysqli_query($konek, "SELECT * FROM produk  LEFT JOIN (SELECT id_produk, SUM(kuantiti) jml_kuantiti FROM transaksi_detail GROUP BY id_produk) b ON produk.id_produk = b.id_produk ORDER BY jml_kuantiti DESC, nama ASC LIMIT 5");

    $produks = [];
    $produkslaris = [];

    while ($produk = mysqli_fetch_object($pd)) {
        $produks[] = $produk;
    }

    while ($produk = mysqli_fetch_object($pdlaris)) {
        $produkslaris[] = $produk;
    }

    $data = [
        'judul' => 'Selamat Datang di Wedrobe ID',
        'produk' => $produks,
        'produklaris' => $produkslaris,
    ];
    return $data;
}
