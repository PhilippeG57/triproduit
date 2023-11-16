<?php

$stmt = $pdo->prepare('SELECT * FROM categories');
$stmt->execute();
$mesCategories=$stmt->fetchAll();

$categories = array();
foreach($mesCategories as $categorie){
    array_push($categories, $categorie['id']);
}

$mesSousCategories=array();

foreach ($categories as $categorie){
    $stmt = $pdo->prepare('SELECT * FROM souscategories WHERE id_categorie = :id_categorie');
    $stmt->bindParam(':id_categorie', $categorie, PDO::PARAM_INT);
    $stmt->execute();
    $mesSousCategories[$categorie]=$stmt->fetchAll();
}

// var_dump($mesSousCategories[1]); renvoient homme et femme
// var_dump($mesSousCategories[2]); renvoient chien et chat
// var_dump($mesSousCategories[3]); renvoient voiture et maison

$i=1;
?>

<section class="container-fluid w-100">
    <div class="container navbar navbar-expand-lg">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarToggleExternalContent">

        <?php foreach($mesCategories as $resCateg){ ?>
            <div class="dropdown">
                <a href="produits.php?idcategorie=<?= $resCateg ['id'] ?>" class="btn" aria-expanded="false">
                    <?= ucfirst($resCateg['nom']); ?>
                </a>
                <ul class="dropdown-menu py-0">
                    <?php foreach($mesSousCategories[$i] as $resSousCateg){ ?>
                    <li><a class="dropdown-item" href="produits.php?idcategorie=<?= $resCateg['id'] ?>&idsouscateg=<?= $resSousCateg['id'] ?>"><?= ucfirst($resSousCateg['nom']);  ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        <?php 
            $i++;
            } 
        ?>
        </div>
    </div>
</section>