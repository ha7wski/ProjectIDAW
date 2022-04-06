<?php

  $servname = 'localhost';
  $dbname = 'iManger';
  $user = 'hatim.hebboul';
  $pass = 'Hatim1997@';

  print_r($_POST);

  try{
    $dbco = new PDO("mysql:host=$servname;dbname=$dbname;charset=utf8", $user, $pass);
    $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $ajoutRepas = $dbco->prepare("INSERT INTO Repas (ID_repas, date, heure, quantite) VALUES('$_POST[id]','$_POST[date]','$_POST[heure]','$_POST[quantite]')");
    $ajoutRepas->execute();

  }


  catch(PDOException $e){
    echo "Erreur : " . $e->getMessage();
  }


?>
