<?php

  $servname = 'localhost';
  $dbname = 'iManger';
  $user = 'hatim.hebboul';
  $pass = 'Hatim1997@';

  try{
    $dbco = new PDO("mysql:host=$servname;dbname=$dbname;charset=utf8", $user, $pass);
    $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $infosAliments = $dbco->prepare("SELECT Repas.date, Repas.heure, Repas.ID_repas, Repas.quantite, Aliments.nom  FROM `Repas`
    JOIN composer ON Repas.ID_repas = composer.ID_repas
    JOIN Aliments ON Repas.Id_repas = Aliments.Id_rep");
    $infosAliments->execute();

    $resultatinfosAliments = $infosAliments->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($resultatinfosAliments);
  }
  catch(PDOException $e){
    echo "Erreur : " . $e->getMessage();
  }

?>
