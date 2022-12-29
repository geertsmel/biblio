<?php
    if(!isset($_GET["id"])){
        header("Location:?section=error");
    }

    include("models/livre.php");

    $id = $_GET["id"];
    $livre = livre($id);

    if(isset($_POST["supprimer"])){
        try {
            livreDelete($id);
            $_SESSION["notification"] = "Le livre '" . $livre["titre"] . "' a bien été supprimé";
                header("Location:?section=livre&action=voir");
        }
        catch(PDOException $e){
            // var_dump($e);
            $message = $e->getMessage();
        }
        
    }

    include("views/livre/supprimer.php");
?>