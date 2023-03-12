<?php
      
    include("models/auteur.php");
    
    $message = "";
    $nom = "";
    $prenom = "";
    

    if(isset($_POST["nom"], $_POST["prenom"])){
        $nom = trim($_POST["nom"]);
        $prenom = trim($_POST["prenom"]);

        try {
            $id = auteurAdd($nom, $prenom);
            if($id != 0){
                $_SESSION["notification"] = "L'auteur  '$nom $prenom' a bien été ajouté";
                header("Location:?section=auteur&action=voir");
            }
            
        }
        catch(PDOException $e){
            // var_dump($e);
            $message = $e->getMessage();
        }
    }
    
    include("views/auteur/ajouter.php");

?>