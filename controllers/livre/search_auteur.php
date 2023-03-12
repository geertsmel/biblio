<?php
$livres = array();
$message="";
$nom = "";
$prenom = "";
if(isset($_POST["nom"], $_POST["prenom"])){
    $nom = "%".trim($_POST["nom"])."%";
    $prenom = "%".trim($_POST["prenom"])."%";
    
    $db = connexion();
    if(strlen($nom) > 0 && strlen($prenom)> 0){
        $requete= "select l.titre, g.nom as genre, s.nom as support, CONCAT(a.nom ,' ', a.prenom) as auteur2 from livre l JOIN auteur a ON l.fk_auteur = a.auteur_id JOIN genre g ON l.fk_genre = g.genre_id JOIN support s ON l.fk_support = s.support_id  where a.nom LIKE :nom AND a.prenom LIKE :prenom";
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
            $requete= "select l.titre, g.nom as genre, s.nom as support, CONCAT(a.nom ,' ', a.prenom) as auteur2 from livre l JOIN auteur a ON l.fk_auteur = a.auteur_id JOIN genre g ON l.fk_genre = g.genre_id JOIN support s ON l.fk_support = s.support_id  where  a.prenom LIKE :prenom";
            $stmt = $db->prepare($requete);
            $stmt->execute(
                array(
                ':prenom' => $prenom
                )
            );
        }
        else {
            $requete= "select l.titre, g.nom as genre, s.nom as support, CONCAT(a.nom ,' ', a.prenom) as auteur2 from livre l JOIN auteur a ON l.fk_auteur = a.auteur_id JOIN genre g ON l.fk_genre = g.genre_id JOIN support s ON l.fk_support = s.support_id  where a.nom LIKE :nom";
            $stmt = $db->prepare($requete);
            $stmt->execute(
                array(
                ':nom' => $nom
                )
            );
        }
    }

    $livres = $stmt->fetchAll();
    // var_dump($livres);
}


include("views/livre/search_auteur.php");

?>