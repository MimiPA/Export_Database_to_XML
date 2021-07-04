<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Maskapai</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#maskapai').DataTable();
        });
    </script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">
    <!--Tabel List Maskapai-->
    <h1 class="text-center" style="padding-top: 20px;"><i class='fas fa-plane' style='font-size:24px'></i> Jadwal Penerbangan <i class='fas fa-plane' style='font-size:24px'></i></h1>
    <div class="container" style="padding-top: 30px;">
        <table class="table table-bordered table-hover" id="maskapai">
            <thead class="bg-warning">
                <tr>
                    <th>ID</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Depart</th>
                    <th>Arrive</th>
                    <th>Price</th>
                    <th>Maskapai</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $m = 1;
                $aMaskapai = ["Maskapai RS", "Maskapai CH", "Maskapai MS"];
                $afile = ["maskapaiRS.xml", "maskapaiCH.xml", "maskapaiMS.xml"];
                for ($i = 0; $i < 3; $i++) {
                    $file = "maskapaiRS.xml";
                    if (file_exists($afile[$i])) {
                        $data = simplexml_load_file($afile[$i]);
                        foreach ($data->flight as $hasil) {
                            $ID = $hasil->ID;
                            $dari = $hasil->dari;
                            $ke = $hasil->ke;
                            $depart = $hasil->depart;
                            $arrive = $hasil->arrive;
                            $price = $hasil->price;
                ?>
                            <tr>
                                <td><?= $m ?></td>
                                <Td><?= $dari ?></td>
                                <td><?= $ke ?></td>
                                <td><?= $depart ?></td>
                                <td><?= $arrive ?></td>
                                <td><?= $price ?></td>
                                <td><?= $aMaskapai[$i] ?></td>
                            </tr>
                <?php
                            $m++;
                        }
                    } else {
                        echo "File $file Tidak Ditemukan";
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
    <!--End of List Maskapai-->
    <hr>

</body>

</html>