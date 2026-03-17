<html>
  <body>
    <?php
    /* création du connecteur vers la base de données lp131_26 */
    $connecteur=mysqli_connect("localhost","root","root","lp131_26");
    $resultat=mysqli_query($connecteur,"SELECT * FROM promo");
    ?>
  <pre>
    <?php
    while($row=mysqli_fetch_assoc($resultat))var_dump($row);
    ?>
  </pre>
  </body>
</html>
