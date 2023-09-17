<h2>Gérer les <?= $countLivres; ?> livres</h2>
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
                <th>🗑</th>
                <th>Titre</th>
                <th>Genre</th>
                <th>Support</th>
                <th>Auteur</th>
                <th>✎</th>
                
            </tr>
            </thead>
            <tbody>

           
            <?php 
            if(count($livres) > 0){
                foreach($livres as $livre){
                    echo "<tr>";
                    echo "<td><a class='btn' href='?section=livre&action=supprimer&id=".$livre["livre_id"]."'>🗑</a>";
                    echo "<td>" . nl2br($livre["titre"]) . "</td>";
                    echo "<td>" . $livre["genre"] . "</td>";
                    echo "<td>" . $livre["support"] . "</td>";
                    echo "<td>" . $livre["auteur2"] . "</td>";
                    echo "<td><a class='btn' href='?section=livre&action=modifier&id=".$livre["livre_id"]."'>✎</a>";
                    
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
    document.forms[0].addEventListener("submit", function(e){
        e.preventDefault();
        rechercher();

    })

    btn_search.addEventListener("click", function(e){
        rechercher();
        
    });

    let notif = document.querySelector(".notification");
    if(notif){
        notif.addEventListener("mouseover", function(e){
            setTimeout(() => {
                document.querySelector(".notification").outerHTML = "";
            }, 1000);
        });
    }

</script>