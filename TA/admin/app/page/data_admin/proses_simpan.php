<?php
include '../../../include/all_include.php';

if (!isset($_POST['id_admin'])) {
        
    ?>
    <script>
        alert("AKSES DITOLAK");
        location.href = "index.php";
    </script>
    <?php
    die();
}


$id_admin = id_otomatis("data_admin", "id_admin", "10");
              $nama_lengkap=xss($_POST['nama_lengkap']);
              $username=xss($_POST['username']);
              $password=md5($_POST['password']);


$query = mysql_query("insert into data_admin values (
'$id_admin'
 ,'$nama_lengkap'
 ,'$username'
 ,'$password'

)");

if ($query) {
    ?>
    <script>location.href = "<?php index(); ?>?input=popup_tambah";</script>
    <?php
} else {
    echo "GAGAL DIPROSES";
}
?>
