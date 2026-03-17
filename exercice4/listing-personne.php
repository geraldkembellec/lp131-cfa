<html>
  <body>
    <?php
    $prenom_personne='Gérald';
    /* création du connecteur vers la base de données lp131_26 */
    $connecteur=mysqli_connect("localhost","root","root","lp131_26");
    /* je passe la requete SQL = "SELECT * FROM promo" */
    $SQL = "SELECT * FROM promo ";
    $SQL .= "WHERE prenom = '";
    $SQL .= $prenom_personne;
    $SQL .= "';";
   
    $resultat=mysqli_query($connecteur, $SQL);
    ?>
  <pre>
    <?php
    while($row=mysqli_fetch_assoc($resultat))var_dump($row);
    ?>
  </pre>
  </body>
</html>
