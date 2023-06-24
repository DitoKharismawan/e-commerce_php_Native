<?php
require 'koneksi.php';
require 'auth.php';
require 'bantuan.php';
require 'cart.php';

function tentang()
{

    $data = [
        'judul' => 'Tentang Kami',
        
    ];
    return $data;
}