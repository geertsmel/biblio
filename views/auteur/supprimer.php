<div class="container">
    <h2>Supprimer un auteur</h2>
    <form action="#" method="post">
        <p>Etes-vous sûre de vouloir supprimer l'auteur "<?= $nom ?> <?= $prenom ?>" ?</p>
        <div class="flex row">
            <a href="?section=auteur&action=voir" class="btn grey">Annuler</a>
            <input type="submit" value="Supprimer" class="btn" name="supprimer">
        </div>
    </form>
    

</div>