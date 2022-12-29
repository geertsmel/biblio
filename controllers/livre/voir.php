<?php
$livres = array();
$message="";
$titre = "";

    
$db = connexion();

$requete= "select l.livre_id, l.titre, g.nom as genre, s.nom as support, CONCAT(a.nom ,' ', a.prenom) as auteur2 from livre l JOIN auteur a ON l.fk_auteur = a.auteur_id JOIN genre g ON l.fk_genre = g.genre_id JOIN support s ON l.fk_support = s.support_id ORDER BY l.titre";
$stmt = $db->prepare($requete);
$stmt->execute(
    array(
    
    )
);
$livres = $stmt->fetchAll();
    // var_dump($livres);
   
    


if(isset($_SESSION["notification"])){
    $message = '<div class="notification">' . $_SESSION["notification"] . '</div>';
    unset($_SESSION["notification"]);
}
include("views/livre/voir.php");

?>