<h2>Ajouter un livre</h2>
<div class="container">
<form action="#" method="post">
    <div class="row">
        <p class="error"><?= $message; ?></p>
    </div>
    <div class="row">
        <label for="titre">Titre :</label>
        <textarea name="titre" id="titre" class="w100"><?= $titre ?></textarea>
    </div>
    <div class="row">
        <label for="auteur">Auteur :</label>
        <select name="auteur" id="auteur">
            <?php
                foreach($auteurs as $key => $value){
                    $selected = ($key == $auteur) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class="row">
        <label for="genre">Genre :</label>
        <select name="genre" id="genre">
            <?php
                foreach($genres as $key => $value){
                   
                    $selected = ($key == $genre) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class="row">
        <label for="support">Support :</label>
        <select name="support" id="support">
            <?php
                foreach($supports as $key => $value){
                    
                    $selected = ($key == $support) ? "selected" : "";
                    echo "<option value='$key' $selected> $value</option>";
                }
            ?>
        </select>
    </div>
    <div class="row">
        <a href="?section=livre&action=voir" class="btn grey">Annuler</a>
        <input type="submit" value="Ajouter" disabled id="btn_save" class="disabled">
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
    })
</script>