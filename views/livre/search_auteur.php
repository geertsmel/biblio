<h2>Rechercher les livres par Auteur</h2>
<div class="flex row sa">
    <div id="gauche">
        <form action="#" method="post">
            <div class="flex col">
                <div class="flex col">
                    <label for="nom">Nom de l'auteur : </label>
                    <input type="text" name="nom" id="nom">
                </div>
                
                <div class="flex col">
                    <label for="prenom">Prénom de l'auteur : </label>
                    <input type="text" name="prenom" id="prenom">
                </div>
                
                <input type="submit" value="Rechercher">
            </div>
            
        </form>
    </div>
    <div id="droite">
        <h2><?= $nom?> <?= $prenom ?></h2>
        <table>
            <tr>
                <th>Titre</th>
                <th>Genre</th>
                <th>Support</th>
                <th>Auteur</th>
            </tr>
            <?php 
            if(count($livres) > 0){
                foreach($livres as $livre){
                    echo "<tr>";
                    echo "<td>" . $livre["titre"] . "</td>";
                    echo "<td>" . $livre["genre"] . "</td>";
                    echo "<td>" . $livre["support"] . "</td>";
                    echo "<td>" . $livre["auteur2"] . "</td>";
                    echo "</tr>";

                }
            }
            
            else {
                $message = "Il n'y a pas de livres";
            }
            
            ?>
        </table>
        <p><?=$message;?></p>
    </div>
    </div>
    