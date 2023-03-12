<h2>Modifier un auteur</h2>
<div class="container">
<form action="#" method="post">
    <div class="row">
        <p class="error"><?= $message; ?></p>
    </div>
    <div class="row">
        <label for="nom">Nom :</label>
        <input name="nom" id="nom" class="w100" value="<?= $nom ?>">
    </div>
    <div class="row">
        <label for="prenom">Prénom :</label>
        <input name="prenom" id="prenom" class="w100" value="<?= $prenom ?>">
    </div>
    <div class="row">
        <a href="?section=auteur&action=voir" class="btn grey">Annuler</a>
        <input type="submit" value="Modifier" disabled id="btn_save" class="disabled">
    </div>
</form>
</div>
<script>
    nom.addEventListener("input", function(){
        if(nom.value.length > 2){
            btn_save.disabled=false;
            btn_save.classList.remove("disabled");
        }
        else {
            btn_save.disabled=true;
            btn_save.classList.add("disabled");
        }
    });

    prenom.addEventListener("input", function(){
        if(prenom.value.length > 2){
            btn_save.disabled=false;
            btn_save.classList.remove("disabled");
        }
        else {
            btn_save.disabled=true;
            btn_save.classList.add("disabled");
        }
    });
</script>