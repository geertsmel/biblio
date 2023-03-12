<?php

    function auteur($id){
        $db = connexion();
        $requete= "select * from auteur where auteur_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id
            )
        );
        return $stmt->fetchAll(PDO::FETCH_ASSOC)[0];
    }

    function auteurAdd($nom, $prenom){
        $db = connexion();
        $requete= "INSERT INTO auteur (nom, prenom) VALUES (:nom, :prenom)";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":nom" => $nom,
                ":prenom" => $prenom
            )
        );

        return $db->lastInsertId(); 
    }

    function auteurUpdate($nom, $prenom, $id){
        $db = connexion();
        $requete= "UPDATE auteur SET nom = :nom, prenom = :prenom where auteur_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id,
                ":nom" => $nom,
                ":prenom" => $prenom
            )
        );

        
    }

    function auteurDelete($id){
        $db = connexion();
        $requete= "DELETE FROM auteur where auteur_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id
            )
        );
    }
?>