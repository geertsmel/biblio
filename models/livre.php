<?php
    function auteurs(){
        $db = connexion();
        $requete= "select auteur_id, concat(nom, ' ', prenom) as nomprenom from auteur";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
            
            )
        );
        return $stmt->fetchAll(PDO::FETCH_KEY_PAIR);
    }

    function supports(){
        $db = connexion();
        $requete= "select * from support";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
            
            )
        );
        return $stmt->fetchAll(PDO::FETCH_KEY_PAIR);
    }

    function genres(){
        $db = connexion();
        $requete= "select * from genre";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
            
            )
        );
        return $stmt->fetchAll(PDO::FETCH_KEY_PAIR);
    }

    function livre($id){
        $db = connexion();
        $requete= "select * from livre where livre_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id
            )
        );
        return $stmt->fetchAll(PDO::FETCH_ASSOC)[0];
    }

    function livreAdd($titre, $fk_auteur, $fk_genre, $fk_support){
        $db = connexion();
        $requete= "INSERT INTO livre (titre, fk_auteur, fk_genre, fk_support) VALUES (:titre, :fk_auteur, :fk_genre, :fk_support)";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":titre" => $titre,
                ":fk_auteur" => $fk_auteur,
                ":fk_genre" => $fk_genre,
                ":fk_support" => $fk_support
            )
        );

        return $db->lastInsertId(); 
    }

    function livreUpdate($titre, $fk_auteur, $fk_genre, $fk_support, $id){
        $db = connexion();
        $requete= "UPDATE livre SET titre = :titre, fk_auteur = :fk_auteur, fk_genre = :fk_genre, fk_support = :fk_support where livre_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id,
                ":titre" => $titre,
                ":fk_auteur" => $fk_auteur,
                ":fk_genre" => $fk_genre,
                ":fk_support" => $fk_support
            )
        );

        
    }

    function livreDelete($id){
        $db = connexion();
        $requete= "DELETE FROM livre where livre_id = :id";
        $stmt = $db->prepare($requete);
        $stmt->execute(
            array(
                ":id" => $id
            )
        );
    }
?>