<?php
    
    if(!isset($_GET["id"])){
        header("Location:?section=error");
    }

    include("models/livre.php");
    $message = "";
    $auteurs = auteurs();
    $genres = genres();
    $supports = supports();

    $id = $_GET["id"];
    $livre = livre($id);
    // var_dump($livre);


    if(isset($_POST["titre"], $_POST["auteur"], $_POST["support"], $_POST["genre"])){
        try {
            livreUpdate($_POST["titre"], $_POST["auteur"], $_POST["genre"], $_POST["support"], $_GET["id"]);
        }
        catch(PDOException $e){
            var_dump($e);
            $message = $e->getMessage();
        }
    }
    
    include("views/livre/modifier.php");

?>