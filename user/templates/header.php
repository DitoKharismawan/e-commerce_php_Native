<?php
if (isset($_POST['masuk'])) {
    masuk($_POST);
}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= url ?>assets/css/bootstrap.min.css" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= url ?>assets/font-awesome/css/font-awesome.min.css" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?= url ?>assets/css/custom.css" crossorigin="anonymous">

    <title><?= $judul ?></title>
</head>
<div class="topbar fixed-top custom-bg3">
    
    <img src="<?= url ?>/assets/images/pages/logo.png" class="logo-pos">
    <?php if (isset($_SESSION['nama'])) : ?>
        <p class="text-right pr-2 custom-text1">
            <a href="<?= url ?>user/profil.php" class="custom-text1"><?= $_SESSION['nama'] ?></a> |
            <a class="custom-text1" href="<?= url ?>user/keluar.php">Keluar</a>
        </p>
    <?php else : ?>
        <p class="text-right pr-2 custom-text1">
            <a class="custom-text1" style="cursor: pointer" data-toggle="modal" data-target="#masuk">Masuk</a> |
            <a class="custom-text1" href="<?= url ?>user/daftar.php">Daftar</a>
        </p>
    <?php endif; ?>

    <?php if (isset($_SESSION['pesan'])) : ?>
        <div id="pesan" data-pesan="<?= $_SESSION['pesan'] ?>"></div>
        <?php unset($_SESSION['pesan']) ?>
    <?php endif; ?>

    <?php if (isset($_SESSION['sukses'])) : ?>
        <div id="cart-sukses" data-sukses="<?= $_SESSION['sukses'] ?>"></div>
        <?php unset($_SESSION['sukses']) ?>
    <?php endif; ?>

    <nav class="navbar navbar-expand-lg shadow-sm ">
        <div id="nav-btn" class="navbar-toggler m-auto" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false">
            <i id="icon" class="fa fa-bars"></i>
        </div>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav navbar-main col-lg-6 col-md-12">
                <li class="nav-item">
                    <a class="nav-link custom-text1 custom-fzise" href="<?= url ?>user/index.php">Beranda </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text1 custom-fzise" href="<?= url ?>user/produk.php">Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text1 custom-fzise" href="<?= url ?>user/tentang.php">Tentang</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text1 custom-fzise" href="<?= url ?>user/kontak.php">Kontak</a>
                </li>
                <li class="nav-item">
                    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#masuk" </button> <a class="nav-link" href="<?= url ?>daftar.php">Daftar</a> -->
                </li> 
            </ul>
            <div class="cari col-6">
                <form class="form-inline float-right" action="<?= url ?>user/produk.php/?cari=">
                    <input name="cari" class="form-control mr-sm-2 " type="search" placeholder="Cari" aria-label="Search">
                    <button class="btn btn-outline-primary my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
    </nav>
</div>

<body class="custom-bg1">
    <div class="container bg-white p-5 custom-container">
    <div class="row">
    <div class="cari-mobile col-12">
        <form class="d-flex flex-row float-right" action="<?= url ?>user/produk.php/?cari=">
            <input name="cari" class="form-control mr-sm-2 " type="search" placeholder="Cari" aria-label="Search">
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
    </div>