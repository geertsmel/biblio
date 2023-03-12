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
            livreUpdate(trim($_POST["titre"]), trim($_POST["auteur"]), trim($_POST["genre"]), trim($_POST["support"]), trim($_GET["id"]));
            $_SESSION["notification"] = "Le livre '" . trim($_POST["titre"]) . "' a bien été modifié";
            header("Location:?section=livre&action=voir");
        }
        catch(PDOException $e){
            var_dump($e);
            $message = $e->getMessage();
        }
    }
    
    include("views/livre/modifier.php");

?>