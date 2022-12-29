<h2>Modifier un livre</h2>
<div class="container">
<form action="#" method="post">
    <div class="flex row">
        <p><?= $message; ?></p>
    </div>
    <div class=" row">
        <label for="titre">Titre :</label>
        <textarea name="titre" id="titre" class="w100"><?= $livre["titre"] ?></textarea>
    </div>
    <div class=" row">
        <label for="auteur">Auteur :</label>
        <select name="auteur" id="auteur">
            <?php
                foreach($auteurs as $key => $value){
                    $selected = ($key == $livre["fk_auteur"]) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class=" row">
        <label for="genre">Genre :</label>
        <select name="genre" id="genre">
            <?php
                foreach($genres as $key => $value){
                    $selected = ($key == $livre["fk_genre"]) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class=" row">
        <label for="support">Support :</label>
        <select name="support" id="support">
            <?php
                foreach($supports as $key => $value){
                    $selected = ($key == $livre["fk_support"]) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class="flex row">
        <a href="?section=livre&action=voir" class="btn grey">Annuler</a>
        <input type="submit" value="Modifier">
    </div>
    
</form>
</div>
<script>
    titre.addEventListener("input", function(){
        if(titre.value.length > 2){
            btn_save.disabled=false;
            btn_save.classList.remove("disabled");
        }
        else {
            btn_save.disabled=true;
            btn_save.classList.add("disabled");
        }
    });

    let titreContent = titre.value;
    if(titreContent.includes("\n")){
        let table = titreContent.split("\n");
        titre.rows = table.length;
    }
    
</script>