<h2>Rechercher les livres par titre</h2>
<div class="flex row sa">
    <div id="gauche">
        <form action="#" method="post">
            <div class="flex col">
                <div class="flex col">
                    <label for="titre">Titre du livre : </label>
                    <input type="text" name="titre" id="titre">
                </div>
                
                
                <input type="submit" value="Rechercher">
            </div>
            
        </form>
    </div>
    <div id="droite">
        <h2><?= $titre?></h2>
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
                    echo "<td>" . nl2br($livre["titre"]) . "</td>";
                    echo "<td>" . $livre["genre"] . "</td>";
                    echo "<td>" . $livre["support"] . "</td>";
                    echo "<td>" . $livre["auteur2"] . "</td>";
                    echo "</tr>";

                }
            }
            
            else {
                if(strlen($message) == 0){
                    $message = "Il n'y a pas de livres";
                }
                
            }
            
            ?>
        </table>
        <p><?=$message;?></p>
    </div>
    </div>
    