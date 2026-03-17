# Envoi de variables
## A distance via un formulaire

Le fichier : [formulaire1.html](formulaire1.html) est basé sur modèle de démonstration du W3school [https://www.w3schools.com/html/html_forms.asp](https://www.w3schools.com/html/html_forms.asp). 

Il envoie le contenu de la variable nommée "variable" à l'URL :
[https://www.w3schools.com/action_page.php](https://www.w3schools.com/action_page.php)
qui est le testeur PHP du W3school pour récupérer des variables et leurs contenus.

--- 

## Le local via MAMP
Le fichier : [formulaire2.html](formulaire2.html)
Il envoie le contenu de la variable nommée "variable" **en local** sur le serveur MAMP :
Le fihier [hello.php](hello.php) récupère la variable "variable" et son ccontenu via la commande PHP *$_GET['variable']*
