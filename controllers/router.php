<?php
    $tab = [
        "livre" => ["search_auteur", "search_titre","voir", "ajouter", "modifier", "supprimer"],
        "auteur" => ["voir", "ajouter", "modifier", "supprimer"],
        "genre" => ["voir", "ajouter", "modifier", "supprimer"],
        "support" => ["voir", "ajouter", "modifier", "supprimer"]
    ];

    if(isset($_GET["section"], $_GET["action"])){
        $section = $_GET["section"];
        $action = $_GET["action"];
        if(array_key_exists($section, $tab)){
            if(in_array($action,$tab[$section])){
                include("controllers/$section/$action.php");
            }
            else {
                include("views/error/404.php");
            }
        }
        else {
            include("views/error/404.php");
        }
    }
    else {
        include("controllers/livre/search_auteur.php");
    }
?>