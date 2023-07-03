$(document).ready(function () {
  $("#nav-btn").click(function () {
    if ($("#icon").attr("class") == "fa fa-bars") {
      $("#icon").attr("class", "fa fa-close");
    } else {
      $("#icon").attr("class", "fa fa-bars");
    }
  });

  $("#btn-pwd").click(function () {
    if ($("#eye").attr("class") == "fa fa-eye") {
      $("#password").attr("type", "text");
      $("#eye").attr("class", "fa fa-eye-slash");
    } else {
      $("#password").attr("type", "password");
      $("#eye").attr("class", "fa fa-eye");
    }
  });

  // const c = $("#navbaNav").child();
  // const d = c.remove("class", "col-6");
  // console.log(d);
});

// Backend
$(document).ready(function () {
  const wd = $(document).width();
  $(document).ready(function () {
    $("#side-btn").click(function () {
      if ($("#icon").attr("class") == "fa fa-bars") {
        $("#icon").attr("class", "fa fa-close");

        $(".sidebar").css("transform", "translateX(0)");
      } else {
        $("#icon").attr("class", "fa fa-bars");
        if (wd > 970) {
          $(".sidebar").css({
            width: "250px",
            transform: "translateX(-195px)",
          });
        } else if (wd < 970) {
          $(".sidebar").css({
            width: "190px",
            transform: "translateX(-160px)",
          });
        }
      }
    });
  });

  const sukses = $("#sukses").attr("class");
  if (sukses != null) {
    Swal.fire(
      {
        icon: "success",
        title: "Berhasil",
        text: sukses,
      },
      setTimeout(function () {
        window.location.href =
          "http://localhost/native/technoid/admin/produk.php/";
      }, 3000)
    );
  }

  const cartSukses = $("#cart-sukses").data("sukses");
  if (cartSukses != null) {
    Swal.fire(
      {
        icon: "success",
        title: "Berhasil",
        text: cartSukses,
      },setTimeout(function () {
        window.location.href =
          "http://localhost/native/technoid/user/profil.php/";
      }, 2000));
  }

  const pesan = $("#pesan").data("pesan");
  if (pesan != null) {
    Swal.fire({
      icon: "error",
      title: "Gagal",
      text: pesan,
    });
  }

  $(".ubah").click(function () {
    $("#ubah-data").show("slow");

    const h = $("#ubah-data").offset().top;
    $("html, body").animate(
      {
        scrollTop: h,
      },
      700,
      "linear"
    );
  });

  $("#btn-transaksi").click(function () {
    $.get(
      "http://localhost/native/technoid/ajax_search/transaksi.ajax.php/",
      function (data) {
        $(".transaksi.table").html(data);
      }
    );
  });

  const page = $("table.table").html();
  function cari(url, keyword) {
    if (keyword == "") {
      $("." + url + ".table").html(page);
    } else {
      $.get(
        "http://localhost/native/technoid/ajax_search/" +
          url +
          ".ajax.php/?cari=" +
          keyword,
        function (data) {
          $("." + url + ".table").html(data);
        }
      );
    }
  }

  $("#input-cari").keyup(function () {
    const keyword = $(this).val();
    const url = $(this).data("url");

    cari(url, keyword);
  });
  
});

function hapusProduk(id, nama, urlhapus) {
  Swal.fire(
    {
      icon: "question",
      title: "Hapus Produk",
      text: "Yakin Hapus " + nama,
      showCancelButton: true,
      confirmButtonColor: '#DD6B55',
      confirmButtonText: 'Hapus',
      cancelButtonText: "Batal"
    }
    // ,
    // setTimeout(function () {
    //   window.location.href =
    //     "../produk.php/";
    // }, 3000)
  ).then(x => {
    console.log(x);
    const url = urlhapus + 'admin/produk.php/?id=' + id;
    const data = { hapus: true };
    if (x.isConfirmed) {
      fetch(url, {
        method: "POST",
        mode: "cors", // no-cors, *cors, same-origin
        cache: "no-cache", 
        credentials: "same-origin", // include, *same-origin, omit
        headers: {
          // "Content-Type": "application/json",
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        redirect: "follow", // manual, *follow, error
        referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: (new URLSearchParams(data)).toString(), // body data type must match "Content-Type" header
      }).then((y) => {
        Swal.fire(
          {
            icon: "info",
            iconHtml: '<i id="icon" class="fa fa-trash"></i>',
            title: "Terhapus",
            text: nama + " telah dihapus",
            timer: 3000,
            timerProgressBar: true,
            willClose: () => {
               window.location.href = url + "/admin/produk.php";
            }
          }
        )
      }).catch((err) => {
        Swal.fire(
          {
            icon: "error",
            title: "Kesalahan",
            text: "Terjadi Kesalahan saat menghapus " + nama,
            timer: 3000,
            timerProgressBar: true
          }
        )
      });
    }
  });
}