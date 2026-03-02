# FICHE PROJET  
## Modélisation MERISE – Centre de documentation d’entreprise  
**Licence 3 – Documentation d’entreprise**  
**Durée : 2 heures – Travail en trinôme – Outil : Moccodo**

---

## Objectifs pédagogiques

- Traduire un énoncé métier en Modèle Conceptuel de Données (MCD).
- Identifier correctement entités, attributs, identifiants et associations.
- Maîtriser les cardinalités minimales et maximales.
- Modéliser une association réflexive (thésaurus).
- Intégrer une entité organisationnelle (Département).

---

## Contexte

Une entreprise dispose d’un centre de documentation interne.  
Elle souhaite structurer son système d’information afin de :

- gérer les documents produits en interne ;
- identifier les auteurs et leur rattachement organisationnel ;
- gérer les emprunts de documents ;
- indexer les documents à l’aide d’un thésaurus hiérarchisé.

Vous devez produire un **MCD complet** à l’aide de Moccodo.

---

## Contraintes métier

### 1. Documents

Un document :

- possède un identifiant unique ;
- possède un titre, une date de publication, un type et un statut ;
- est rédigé par un ou plusieurs auteurs ;
- est indexé par au moins un descripteur du thésaurus.

---

### 2. Auteurs

Un auteur :

- est identifié par un matricule (*qui devirendra la clé primaire donc*);
- possède un nom et un prénom ;
- appartient obligatoirement à un département ;
- peut rédiger zéro, un ou plusieurs documents.

---

### 3. Collaborateurs

Un collaborateur :

- est identifié par un identifiant unique ;
- possède un nom et un prénom ;
- appartient obligatoirement à un département ;
- peut effectuer zéro, un ou plusieurs emprunts.

---

### 4. Départements

Un département :

- est identifié par un code unique ;
- possède un libellé ;
- regroupe zéro, un ou plusieurs auteurs ;
- regroupe zéro, un ou plusieurs collaborateurs.

---

### 5. Emprunts

Un emprunt :

- concerne exactement un document (on ne peut pas emprunter par **lot**);
- concerne exactement un collaborateur ;
- possède une date d’emprunt et une date prévue de retour.

Un document peut faire l’objet de zéro, un ou plusieurs emprunts (*dans le temps*).

---

### 6. Thésaurus

Un descripteur :

- possède un identifiant unique ;
- possède un libellé ;
- peut indexer zéro, un ou plusieurs documents ;
- peut avoir zéro ou un terme générique ;
- peut avoir zéro, un ou plusieurs termes spécifiques.

---

## Travail demandé

### Étape 1 – Analyse (40 min)

1. Identifier les entités.
2. Identifier les attributs.
3. Déterminer les identifiants.
4. Identifier les associations.
5. Déterminer les cardinalités minimales et maximales.
6. Repérer la relation réflexive.

---

### Étape 2 – Production du MCD (60 min)

Contraintes :

- Maximum 7 entités.
- Cardinalités explicites.
- Une association réflexive.
- Une association porteuse d’attributs.
- Pas de redondance.

---

### Étape 3 – Justification (20 min)

Rédiger 10–15 lignes expliquant :

- vos choix de cardinalités ;
- la modélisation du thésaurus ;
- pourquoi l’emprunt est une association.

---

## Livrables attendus

1. Code Moccodo.
2. Diagrammes générés (MCD + MLD).
3. Texte de justification.
