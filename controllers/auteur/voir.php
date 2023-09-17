<?php
$livres = array();
$message="";
$titre = "";
$countAuteurs = 0;
    
$db = connexion();

$nom = "";
$prenom = "";
if(isset($_POST["nom"], $_POST["prenom"])){
    $nom = "%".trim($_POST["nom"])."%";
    $prenom = "%".trim($_POST["prenom"])."%";
    
    $db = connexion();
    if(strlen($nom) > 0 && strlen($prenom)> 0){
        $requete= "select auteur_id, nom, prenom from auteur  where nom LIKE :nom AND prenom LIKE :prenom";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
            ':nom' => $nom,
            ':prenom' => $prenom
            )
        );
    }
    else {
        if(strlen($nom) == 0){
            $requete= "select auteur_id, nom, prenom from auteur  where prenom LIKE :prenom";
            $stmt = $db->prepare($requete);
            $stmt->execute(
                array(
                ':prenom' => $prenom
                )
            );
        }
        else {
            $requete= "select auteur_id, nom, prenom from auteur  where nom LIKE :nom";
            $stmt = $db->prepare($requete);
            $stmt->execute(
                array(
                ':nom' => $nom
                )
            );
        }
    }

    $auteurs = $stmt->fetchAll();
    // var_dump($auteurs);
    $countAuteurs = count($auteurs);
}
else {
    $requete= "select auteur_id,nom, prenom from auteur";
    $stmt = $db->prepare($requete);
    $stmt->execute(
        array(
        
        )
    );
    $auteurs = $stmt->fetchAll();
        // var_dump($livres);
    $countAuteurs = count($auteurs);
}



   
    


if(isset($_SESSION["notification"])){
    $message = '<div class="notification">' . $_SESSION["notification"] . '</div>';
    unset($_SESSION["notification"]);
}
include("views/auteur/voir.php");

?>