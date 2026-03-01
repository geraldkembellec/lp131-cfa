# CORRIGÉ TYPE  
## Modélisation MERISE – Centre de documentation

---

## Entités attendues

- DOCUMENT
- AUTEUR
- COLLABORATEUR
- DEPARTEMENT
- DESCRIPTEUR

---

## Associations attendues

- REDIGER
- APPARTENIR_A
- AFFECTER_A
- INDEXER
- EMPRUNT (porteuse d’attributs)
- HIERARCHISER (réflexive)

---

## Analyse des cardinalités

### Auteur – Département

- Un auteur appartient à exactement 1 département (1,1).
- Un département regroupe 0,N auteurs.

### Collaborateur – Département

- Un collaborateur appartient à exactement 1 département (1,1).
- Un département regroupe 0,N collaborateurs.

### Auteur – Document

- Un auteur rédige 0,N documents.
- Un document est rédigé par 1,N auteurs.

### Document – Descripteur

- Un document est indexé par 1,N descripteurs.
- Un descripteur indexe 0,N documents.

### Emprunt

- Un collaborateur effectue 0,N emprunts.
- Un document fait l’objet de 0,N emprunts.
- Chaque emprunt concerne exactement 1 collaborateur et 1 document.

### Hiérarchie du thésaurus

- Un descripteur peut avoir 0 ou 1 terme générique.
- Un descripteur peut avoir 0,N termes spécifiques.

---

## Syntaxe Moccodo

```moccodo
DOCUMENT: id_document, titre, date_publication, type, statut
AUTEUR: matricule, nom, prenom
COLLABORATEUR: id_collaborateur, nom, prenom
DEPARTEMENT: code_departement, libelle
DESCRIPTEUR: id_descripteur, libelle

REDIGER, 0N AUTEUR, 1N DOCUMENT

APPARTENIR_A, 1N DEPARTEMENT, 1N AUTEUR
AFFECTER_A, 1N DEPARTEMENT, 1N COLLABORATEUR

INDEXER, 1N DOCUMENT, 0N DESCRIPTEUR

EMPRUNT, 0N COLLABORATEUR, 0N DOCUMENT:
    date_emprunt, date_retour_prevue

HIERARCHISER, 0N DESCRIPTEUR, 01 DESCRIPTEUR
