<div class="container">
    <h2>Supprimer un livre</h2>
    <form action="#" method="post">
        <p>Etes-vous sûre de vouloir supprimer le livre "<?= $livre["titre"] ?>" ?</p>
        <div class="flex row">
            <a href="?section=livre&action=voir" class="btn grey">Annuler</a>
            <input type="submit" value="Supprimer" class="btn" name="supprimer">
        </div>
    </form>
    

</div>