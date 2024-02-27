<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
    .container {
    display: flex; 
    justify-content: center; 
    margin-top: 50px;
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

button:hover {
    background-color: #0056b3;
}
    </style>
</head>
<body>
<div class="container">
    <form method="POST" action="utenti.php">
        <button class="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg" type="submit">Utenti</button>
    </form>

    <form method="POST" action="spedizioni.php">
        <button class="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg" type="submit">Spedizioni</button>
    </form>
</div>
</body>
</html>
