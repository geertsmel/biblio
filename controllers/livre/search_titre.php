<?php
$livres = array();
$message="";
$titre = "";
if(isset($_POST["titre"])){
    $titre = trim($_POST["titre"]);
    if(strlen($titre) == 0){
        $message = "Vous devez remplir le titre";
    }
    
    $db = connexion();
    if(strlen($titre) > 0){
        $requete= "select l.titre, g.nom as genre, s.nom as support, CONCAT(a.nom ,' ', a.prenom) as auteur2 from livre l JOIN auteur a ON l.fk_auteur = a.auteur_id JOIN genre g ON l.fk_genre = g.genre_id JOIN support s ON l.fk_support = s.support_id  where l.titre LIKE :titre";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
            ':titre' => "%".$titre. "%"
            )
        );
        $livres = $stmt->fetchAll();
    // var_dump($livres);
    }
    

    
}


include("views/livre/search_titre.php");

?>