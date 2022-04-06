<?php
    require_once("template_header.php");
?>

<script src="../js/journal.js"></script>
<html>
    <head>
       <meta charset="utf-8">
			 <div class="conteneur-flexible ligne ">
			 <div class="element-flexible bleu-clair element-hw-autres">

			 <form id="AddFoodForm" onsubmit="onFormSubmit();" autocomplete="off">
			     <p>Aliment <br id="contenu-aliment"> <input type="text" id="IDaliment" name="aliment" value="" required></select></p>
			     <p>Quantité (en g) <br> <input type="text" id="IDquantite" name="quantite" value="" required></p>
			     <p>Date <br> <input type="date" id="IDdate" name="date" value="" required></p>
			     <p>Heure <br> <input type="text" id="IDheure" name="heure" value="" required></p>
			     <p><button type="submit">Ajouter</button></p>
			 </form>
			 <br>
			 <table id="data_table" border="4" width="100%" bordercolor="#FCFCFC" frame="hsides" rules="rows">
			     <thead>
			         <tr>
			             <th scope="col" style="background-color:white;"> Date de consommation </th>
			             <th scope="col" style="background-color:white;"> Heure de consommation</th>
			             <th scope="col" style="background-color:white;"> Quantité (g)</th>
			             <th scope="col" style="background-color:white;"> Aliment </th>
			         </tr>
			     </thead>

			     <tbody id="table-content">

			     </tbody>
			 </table>
        <!-- importer le fichier de style -->
        <link rel="stylesheet" media="screen" type="text/css" href="../css/style.css"/>
    </head>
</html>
