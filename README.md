# Brief-Merise


```sql

--Les titres et dates de sortie des films du plus récent au plus ancien--
SELECT titre, annee_sortie
FROM films
ORDER BY annee_sortie DESC;

-- Les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique--
SELECT nom, prenom,date_naissance
FROM acteur
WHERE date_naissance > 30
ORDER BY nom, prenom;

```

```sql
--La liste des acteurs/actrices principaux pour un film donné-- 
SELECT
    m.titre, a.nom , a.prenom , a.role
FROM
    film m
left JOIN
    acteur a  ON (m.acteur_id  = a.acteur_id);

```
```sql
--La liste des films pour un acteur/actrice donné
Ajouter un film-- 
SELECT
    m.titre,
    m.annee_sortie,
    a.nom,
    a.prenom,
    a.role
FROM
    film m
JOIN
    acteur a ON (m.acteur_id = a.acteur_id)
WHERE
    a.nom = 'Ethan' AND a.prenom = 'Miller';

```

```sql
--Ajouter un film-- 

INSERT INTO film (titre, duree, annee_sortie, id_realisateur)
VALUES ('Inception', '2h28m ','2023-01-01' );


```

```sql 
--Ajouter un acteur/actrice--

INSERT INTO acteur (nom, prenom, date_naissance)
VALUES ('Smith', 'John', '1990-05-15');
```
```sql
--Modifier un film-- 

UPDATE film
SET titre_film = 'Inception'
WHERE id = 1;
```

```sql
--  Supprimer un acteur-- 

DELETE FROM acteur
WHERE id_acteur = '1';

```
```sql 
-- Afficher les 3 derniers acteurs/actrices ajouté(e)s --

SELECT nom, prenom, date_naissance
FROM acteur
ORDER BY id_acteur DESC
LIMIT 3;

```