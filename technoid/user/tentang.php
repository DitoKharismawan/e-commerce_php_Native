<?php
session_start();
require '../function/tentang.php';
$judul = tentang()['judul'];



require 'templates/header.php';
?>

<div class="row bg-white border p-2 mt-5">
    <div class="col-md ml-3">
        <h1>Tentang Kami</h1>
        <p class="lead custom-break">
Wedrobe ID
Kelompok 4

Dito Kharismawan | 202043500038
Ramdani | 202043500216
Stefano Bima | 202043500396</p>
        <hr>
        <div class="row ml-1">
            <div class="w-100">
                <h3><i class="fa fa-map-marker"></i>Alamat</h3>
                <p>Gedong<br>Pasar Rebo<br>Jakarta Selatan<br>Indonesia<br><strong>Kelompok 4</strong></p>
            </div>
            <!-- /.col-sm-4-->
            <div class="">
                <h3><i class="fa fa-phone"></i> Hubungi Kami</h3>
                <p class="text-muted">Anda dapat menghubungi kami dinomer yang tertera dibawah ini</p>
                <p><strong>+6287 812 212 333</strong></p>
            </div>
        </div>
    </div>
</div>
<?php require 'templates/footer.php' ?>