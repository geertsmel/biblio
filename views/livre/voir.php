<h2>Gérer les livres</h2>
<div class="flex row sa">
    <div id="gauche">
        <form method="post">
            <div class="flex col">
                <div class="flex col">
                    <label for="mot">Rechercher : </label>
                    <input type="text" name="mot" id="mot">
                </div>
                
                
                <input type="button" value="Rechercher" id="btn_search">
            </div>
            
        </form>
    </div>
    <div id="droite">
        
        <table>
            <thead>
            <tr>
                <th>Titre</th>
                <th>Genre</th>
                <th>Support</th>
                <th>Auteur</th>
            </tr>
            </thead>
            <tbody>

           
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
                if(strlen($message) == 0){
                    $message = "Il n'y a pas de livres";
                }
                
            }
            
            ?>
             </tbody>
        </table>
        <p><?=$message;?></p>
    </div>
    </div>

<script>
    btn_search.addEventListener("click", function(){
        let table = document.querySelector("table").children[1];
        console.log(table);
    });
</script>
    

ssh-keygen -t ed25519 -C "geerts.m@hotmail.com"