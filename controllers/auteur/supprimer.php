<?php
    if(!isset($_GET["id"])){
        header("Location:?section=error");
    }

    include("models/auteur.php");

    $id = $_GET["id"];
    $auteur = auteur($id);
    $nom = $auteur["nom"];
    $prenom = $auteur["prenom"];

    if(isset($_POST["supprimer"])){
        try {
            auteurDelete($id);
            $_SESSION["notification"] = "Le auteur '$nom $prenom' a bien été supprimé";
                header("Location:?section=auteur&action=voir");
        }
        catch(PDOException $e){
            // var_dump($e);
            $message = $e->getMessage();
        }
        
    }

    include("views/auteur/supprimer.php");
?>