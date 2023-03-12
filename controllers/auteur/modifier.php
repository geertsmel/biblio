<?php
    
    if(!isset($_GET["id"])){
        header("Location:?section=error");
    }

    include("models/auteur.php");
    $message = "";

    $id = trim($_GET["id"]);
    $auteur = auteur($id);
    //var_dump($auteur);
    $nom =$auteur["nom"];
    $prenom =$auteur["prenom"];


    if(isset($_POST["nom"], $_POST["prenom"])){
        $nom = trim($_POST["nom"]);
        $prenom = trim($_POST["prenom"]);
        try {
            auteurUpdate($nom, $prenom, $id);
            $_SESSION["notification"] = "L'auteur '$nom $prenom' a bien été modifié";
            header("Location:?section=auteur&action=voir");
        }
        catch(PDOException $e){
            var_dump($e);
            $message = $e->getMessage();
        }
    }
    
    include("views/auteur/modifier.php");

?>