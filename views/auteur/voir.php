<h2>Gérer les auteurs</h2>
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
                
                <input type="submit" value="Rechercher" id="btn_search">
            </div>
        </form>
    </div>
    <div id="droite">
        
        <table>
            <thead>
            <tr>
                <th>🗑</th>
                
                <th>Nom</th>
                <th>Prénom</th>
                <th>✎</th>
                
            </tr>
            </thead>
            <tbody>

           
            <?php 
            if(count($auteurs) > 0){
                foreach($auteurs as $auteur){
                    echo "<tr>";
                    echo "<td><a class='btn' href='?section=auteur&action=supprimer&id=".$auteur["auteur_id"]."'>🗑</a>";
                    echo "<td>" . $auteur["nom"] . "</td>";
                    echo "<td>" . $auteur["prenom"] . "</td>";
                    echo "<td><a class='btn' href='?section=auteur&action=modifier&id=".$auteur["auteur_id"]."'>✎</a>";
                    
                    echo "</tr>";

                }
            }
            
            else {
                if(strlen($message) == 0){
                    $message = "Il n'y a pas de auteurs";
                }
                
            }
            
            ?>
             </tbody>
        </table>
        <p><?=$message;?></p>
    </div>
    </div>

<script>
    // document.forms[0].addEventListener("submit", function(e){
    //     e.preventDefault();
    //     rechercher();

    // })

    // btn_search.addEventListener("click", function(e){
    //     rechercher();
        
    // });

    let notif = document.querySelector(".notification");
    if(notif){
        notif.addEventListener("mouseover", function(e){
            setTimeout(() => {
                document.querySelector(".notification").outerHTML = "";
            }, 1000);
        });
    }

</script>