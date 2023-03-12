<?php
      
    

    include("models/livre.php");
    $auteurs = auteurs();
    $genres = genres();
    $supports = supports();

    $message = "";
    $titre = "";
    $auteur = "";
    $genre = "";
    $support = "";
   


    if(isset($_POST["titre"], $_POST["auteur"], $_POST["genre"], $_POST["support"])){
        $titre = trim($_POST["titre"]);
        $auteur = trim($_POST["auteur"]);
        $genre = trim($_POST["genre"]);
        $support = trim($_POST["support"]);


        try {
            $id = livreAdd($_POST["titre"], $_POST["auteur"], $_POST["genre"], $_POST["support"]);
            if($id != 0){
                $_SESSION["notification"] = "Le livre '" . $_POST["titre"] . "' a bien été ajouté";
                header("Location:?section=livre&action=voir");
            }
            
        }
        catch(PDOException $e){
            // var_dump($e);
            $message = $e->getMessage();
        }
    }
    
    include("views/livre/ajouter.php");

?>