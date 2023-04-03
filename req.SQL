/* Une requête listant toutes les séries disponibles alphabétiquement avec une pagination
 de manière à n'en obtenir que X à la fois, à partir d'un index Y.
On modifie X pour changer le nombre de résultats et Y pour modifier le décalage
ORDER BY pour trier les séries par ordre alphabétique , LIMIT et OFFSET pour paginer les résultats */
SELECT titre 
FROM Serie 
ORDER BY titre 
LIMIT X OFFSET Y;


/*Une requête permettant de lister toutes les séries auxquelles un acteur a participé,
 ainsi que le nombre d'épisodes dans lequel il apparaît dans chaque série, classé par nombre d'épisodes. 
 Il faut mettre le nom/prénom de l'acteur shouaitée ( on pourrait aussi le faire via son id )
INNER JOIN pour récupérer les info nécessaire , COUNT pour compter le nombre de fois ou l'acteur apparait, ORDER BY DESC pas obligatoire pour la requete mais permet plus de lisibilté   */
SELECT Serie.titre, COUNT(*) AS nb_episodes 
FROM Acteur_Episode 
INNER JOIN Episode ON Acteur_Episode.id_episode = Episode.id_episode 
INNER JOIN Serie ON Episode.id_serie = Serie.id_serie 
INNER JOIN Acteur ON Acteur_Episode.id_acteur = Acteur.id_acteur 
WHERE Acteur.nom = '' AND Acteur.prenom = '' 
GROUP BY Serie.titre 
ORDER BY nb_episodes DESC;

/* Une requête donnant la moyenne de toutes les évaluations données
 par l'ensemble des utilisateurs à un épisode donné, classé par date de rédaction décroissante. 
On remplace id_episode par celui shouaitée pour avoir sa moyenne .
 AS pour renommer nos notes en une moyenne , ORDER BY pour trier par date décroissante*/
SELECT id_episode, AVG(note) AS moyenne, date_visionnage 
FROM Visionnage 
WHERE id_episode = 'id_episode'
GROUP BY id_episode, date_visionnage 
ORDER BY date_visionnage DESC;

/*Une requête permettant d'afficher la liste des épisodes d'une série donnée avec la liste de leurs acteurs et réalisateurs.
On modifiera id_serie par celui shouaité pour obtenir les informations
GROUP CONCAT est utilisé pour avoir tous les acteurs sur une même ligne , on pourrais faire de même pour les réalisateurs */
SELECT Episode.numero_episode, Episode.titre AS titre_episode, 
GROUP_CONCAT(DISTINCT CONCAT(Acteur.nom, ' ', Acteur.prenom) ORDER BY Acteur.nom, Acteur.prenom SEPARATOR ', ') AS acteurs,
GROUP_CONCAT(DISTINCT CONCAT(Realisateur.nom, ' ', Realisateur.prenom) ORDER BY Realisateur.nom, Realisateur.prenom SEPARATOR ', ') AS realisateurs
FROM Episode 
LEFT JOIN Acteur_Episode ON Episode.id_episode = Acteur_Episode.id_episode 
LEFT JOIN Acteur ON Acteur_Episode.id_acteur = Acteur.id_acteur 
LEFT JOIN Realisateur_Episode ON Episode.id_episode = Realisateur_Episode.id_episode 
LEFT JOIN Realisateur ON Realisateur_Episode.id_realisateur = Realisateur.id_realisateur 
WHERE Episode.id_serie = id_serie 
GROUP BY Episode.id_episode
ORDER BY Episode.numero_episode;

/* Une requête renvoyant la liste de tous les acteurs participant à n'importe quel épisode d'une série donnée,
classés par nombre d'épisodes et alphabétiquement
On modifiera Episode.id_serie par celui shouaité pour obtenir les informations*/
SELECT Acteur.nom, Acteur.prenom, COUNT(*) AS nb_episodes 
FROM Acteur_Episode 
INNER JOIN Episode ON Acteur_Episode.id_episode = Episode.id_episode 
INNER JOIN Acteur ON Acteur_Episode.id_acteur = Acteur.id_acteur
WHERE Episode.id_serie = '1'
GROUP BY Acteur.nom, Acteur.prenom 
ORDER BY nb_episodes DESC, Acteur.nom ASC;



/* -------------------------------------------REQUETE PROPOSE---------------------------------*/

/* requête qui permet de voir les 10 utilisateurs qui ont regardé le plus d'épisodes 
Sur un site permettrais d'établir le TOP 10 des utilisateurs*/
SELECT Utilisateur.nom, Utilisateur.prenom, COUNT(Visionnage.id_visionnage) AS nb_visionnages
FROM Utilisateur
LEFT JOIN Visionnage ON Utilisateur.id_utilisateur = Visionnage.id_utilisateur
GROUP BY Utilisateur.id_utilisateur
ORDER BY nb_visionnages DESC
LIMIT 10;


/* requête qui affiche les épisodes d'une série selon un mot qui est présent dans son synopsis 
Exemple avec fantastique dans cette requête 
*/
SELECT Episode.titre, Serie.synopsis as synopsis_serie, Acteur.nom, Acteur.prenom
FROM Episode
JOIN Serie ON Episode.id_serie = Serie.id_serie
JOIN Acteur_Episode ON Episode.id_episode = Acteur_Episode.id_episode
JOIN Acteur ON Acteur_Episode.id_acteur = Acteur.id_acteur
WHERE Serie.synopsis LIKE '%fantastique%' ;



/* requête qui permet de trouver les épisodes les plus populaires en termes de visionnages et de notes
Sur un site permettrais de voir les séries les mieux notés/regardés*/
SELECT Episode.titre, COUNT(Visionnage.id_visionnage) AS nb_visionnages, AVG(Visionnage.note) AS moyenne_notes
FROM Episode
LEFT JOIN Visionnage ON Episode.id_episode = Visionnage.id_episode
GROUP BY Episode.id_episode
ORDER BY nb_visionnages DESC, moyenne_notes DESC;

