<?php
include "koneksi3.php";
header('Content-Type: text/xml');

$query = "SELECT penerbangan.kode_penerbangan AS ID, dari, ke, berangkat AS depart, tiba AS arrive, harga AS price FROM penerbangan INNER JOIN jadwal ON penerbangan.kode_penerbangan = jadwal.kode_penerbangan;";
$hasil = mysqli_query($conn, $query);
$jumField = mysqli_num_fields($hasil);
echo "<?xml version='1.0' encoding='UTF-8'?>";
echo "<info>";
while ($data = mysqli_fetch_array($hasil)) {
    echo "<flight>";
    for ($i = 0; $i <= $jumField - 1; $i++) {
        $namaField = mysqli_fetch_field_direct(
            $hasil,
            $i
        )->name;
        echo
        "<" . $namaField . ">" . $data[$namaField] . "</" . $namaField . ">";
    }
    echo "</flight>";
}
echo "</info>";

?>