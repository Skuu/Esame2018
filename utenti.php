<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Utenti</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container{
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color:#ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        th, td{
            border: 2px;
            text-align: center;
            padding: 10px;
        }
        th{
            background-color:#c8c8c8;
        }
        button {
        padding: 10px 20px;
        margin: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        }
    </style>

</head>
<body>
<div class="container">
    <?php

        $conn = mysqli_connect("localhost", "root", "", "spedizioni");
        mysqli_select_db($conn, "spedizioni");
        $query = "SELECT c.ID, c.nome,c.cognome, c.telefono, c.email, c.username, c.password, c.citta, c.via, c.CAP FROM Clienti AS c ORDER BY c.ID";
        $result = mysqli_query($conn, $query);
        if(mysqli_num_rows($result) != 0) {
            echo "<table>";
            
            echo "<thead>";
            echo "<tr>";
            
            echo "<th>ID</th>";
            echo "<th>Nome</th>";
            echo "<th>Cognome</th>";
            echo "<th>Telefono</th>";
            echo "<th>Email</th>";
            echo "<th>Username</th>";
            echo "<th>Password</th>";
            echo "<th>Citta</th>";
            echo "<th>Via</th>";
            echo "<th>CAP</th>";
            
            echo "</tr>";
            echo "</thead>";
            echo "<tbody>";
            echo "</tbody>";
            
            while($row = mysqli_fetch_array($result)) {
                echo "<tr>";

                echo "<td>$row[0]</td>";
                echo "<td>$row[1]</td>";
                echo "<td>$row[2]</td>";
                echo "<td>$row[3]</td>";
                echo "<td>$row[4]</td>";
                echo "<td>$row[5]</td>";
                echo "<td>$row[6]</td>";
                echo "<td>$row[7]</td>";
                echo "<td>$row[8]</td>";
                echo "<td>$row[9]</td>";

                echo "</tr>";
            }

            echo "</table>";
        }

    ?>
    <form method="POST" action="home.php">
    <button class="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg" type="submit"> Home </button>
    </form>
    </div>
</body>
</html>