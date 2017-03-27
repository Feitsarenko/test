<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<?php
$link = mysqli_connect('localhost','root', 'fox123','mydb',3306);

if (mysqli_connect_errno()) {

    echo 'Error 111(' . mysqli_connect_errno() . ') :' . mysqli_connect_error();
    exit();
}





$sql = "SELECT name_auto, price_fuel, fuel_consumption, mileage_last_month, mileage_this_month   FROM auto_park  INNER JOIN fuel ON auto_park.name_fuel=fuel.name_fuel;";
$result = mysqli_query($link, $sql);
?>



<table border="2" cellpadding="5xp">
    <tr><th>Auto_name</th><th>Costs_last_month</th><th>Costs_this_month</th></tr>
    <?php

    $rows=array();

    while ($row=mysqli_fetch_array($result))
        $rows[]=$row;

    foreach ($rows as $row){
        $costs_last_month = $row['price_fuel']*$row['fuel_consumption']*$row['mileage_last_month']/100;
        $costs_this_month = $row['price_fuel']*$row['fuel_consumption']*$row['mileage_this_month']/100;

        echo  '<tr><td>'.$row['name_auto'] .'</td><td>'. $costs_last_month .'</td><td>'. $costs_this_month.'</td></tr>';
    }
    ?>
</table>
</body>
</html>