# OussamaBYoussef-epi_inge_5_devops_2526_gl

TP : Git et Scripts Bash
Bienvenue dans ce TP ! Vous allez apprendre à utiliser Git pour collaborer sur un projet et écrire des scripts Bash pour résoudre des problèmes. Ce TP utilise SSH pour l’authentification avec GitHub. Suivez les instructions ci-dessous pour configurer votre environnement et commencer.

Prérequis et Configuration Initiale
Avant de commencer, suivez ces étapes pour préparer votre machine virtuelle (VM) et vous connecter à GitHub avec SSH.

1. Vérifier et Installer Git
Assurez-vous que Git est installé sur votre VM :

Ouvre un terminal dans ta VM.
Vérifie si Git est installé en tapant : git --version
Si une version s’affiche (ex. git version 2.34.1), Git est déjà installé.
Sinon, installe-le avec :
sudo apt update

sudo apt install git

2. Créer un Dossier de Travail
Pour organiser votre travail, créez un dossier spécifique et entrez dedans :
mkdir Devops
cd Devops

4. Configurer ton Identité Git
Git a besoin de savoir qui tu es pour associer tes commits à ton nom. Configure ton identité avec les mêmes informations que ton compte GitHub :

Tape ces commandes en remplaçant par ton nom et email :
git config --global user.name "Ton Nom"

git config --global user.email "ton.email@example.com"

Vérifie que c’est bien enregistré :
git config --global --list

4. Authentifier ta VM avec GitHub via SSH
Pour travailler avec ce dépôt, vous utiliserez SSH. Suivez ces étapes pour configurer une clé SSH et la lier à GitHub.

4.1 Générer une Clé SSH
Dans le terminal de ta VM, génère une clé SSH : ssh-keygen -t ed25519 -C "ton.email@example.com"

Appuie sur Enter pour accepter l’emplacement par défaut (/home/utilisateur/.ssh/id_ed25519).

Laisse la passphrase vide (appuie sur Enter deux fois).

Une clé publique (id_ed25519.pub) et une clé privée (id_ed25519) seront générées.

4.2 Ajouter la Clé Publique à GitHub
Affiche ta clé publique : cat ~/.ssh/id_ed25519.pub

Copie tout le texte affiché (ex. ssh-ed25519 AAAAC3... ton.email@example.com).

Sur GitHub :

Connecte-toi à ton compte.
Va dans "Settings" > "SSH and GPG keys" > "New SSH key".
Donne un nom à la clé (ex. "VM-TP").
Colle la clé copiée dans le champ "Key".
Clique sur "Add SSH key".
4.3 Tester la Connexion SSH
Vérifie que ta VM est bien connectée à GitHub : ssh -T git@github.com
Si tout va bien, tu verras : Hi ton-compte! You've successfully authenticated, but GitHub does not provide shell access.
5. Cloner le Dépôt avec SSH
Une fois SSH configuré, clonez ce dépôt dans votre dossier Devops :

git clone git@github.com:OussamaBYoussef/epi_inge_4_devops_2425_gl.git

cd epi_inge_4_devops_2425_gl

Instructions générales
Après avoir configuré votre environnement :

Créez une branche avec votre nom : git checkout -b Exemple : git checkout -b jean-dupont
Travaillez sur les exercices dans le dossier VotreNom+Prenom/.
Pour chaque exercice terminé :
Ajoutez vos changements : git add Exemple : git add VotreNom+Prenom/exercice1.sh
Faites un commit : git commit -m "Exercice X terminé"
Poussez vos changements : git push origin
Créez une Merge Request sur GitHub :
Allez sur https://github.com/Nolch1/epi_inge_4_devops_2425_gl.
Cliquez sur "Pull Requests" > "New Pull Request".
Sélectionnez votre branche (<votre-nom>) vers main.
Cliquez sur "Create Pull Request".
Exercices
Voici les 7 exercices à réaliser dans ce TP. Chaque exercice doit être implémenté dans un fichier Bash spécifique dans le dossier VotreNom+Prenom/. Assurez-vous de tester vos scripts et de les rendre exécutables avec chmod +x <fichier> avant de les soumettre.

Exercice 1 : Évaluation d’une note
Fichier : exercice1.sh

Objectif : Créez un script qui demande à l’utilisateur de saisir une note (entre 0 et 20) et affiche un message selon la note :

"très bien" si la note est entre 16 et 20 (inclus).
"bien" si entre 14 et 16 (16 exclus).
"assez bien" si entre 12 et 14 (14 exclus).
"moyen" si entre 10 et 12 (12 exclus).
"insuffisant" si inférieur à 10.
Exemple d’exécution : Entrez une note (0-20) : 15 bien

Cette commande permet de récupérer les dernières modifications de la branche main depuis le dépôt distant afin de synchroniser votre copie locale avec les contributions des autres membres. :

git pull origin main

Exercice 2 : Boucle sur les notes
Fichier : exercice2.sh
Objectif : Reprenez l’exercice 1 et modifiez-le pour :
Répéter la saisie de notes tant que l’utilisateur n’entre pas une note négative ou q (pour quitter).
À la fin, afficher le nombre total de notes saisies et leur moyenne (arrondie à 2 décimales si possible).
Exemple d’exécution : Entrez une note (0-20, ou q pour quitter) : 16 très bien Entrez une note (0-20, ou q pour quitter) : 12 assez bien Entrez une note (0-20, ou q pour quitter) : q Nombre de notes saisies : 2 Moyenne : 14.00
Exercice 3 : Vérification du type de fichier
Fichier : exercice3.sh
Objectif : Créez un script qui prend un fichier en paramètre (ex. ./exercice3.sh fichier.txt) et affiche son type :
"fichier régulier" s’il s’agit d’un fichier classique.
"dossier" s’il s’agit d’un répertoire.
"lien symbolique" s’il s’agit d’un lien.
"n’existe pas ou type inconnu" sinon.
Exemple d’exécution : ./exercice3.sh scripts/FichierNote.txt scripts/FichierNote.txt est un fichier régulier
Exercice 4 : Filtrer les notes
Fichier : exercice4.sh

Données : Utilisez le fichier FichierNote.txt qui contient : Dupont François 12 Durand Françoise 8 Dujardin Nicole 14

Objectif : Créez un script qui lit FichierNote.txt et affiche uniquement les lignes où la note est supérieure ou égale à 10.

Exemple d’exécution : ./exercice4.sh Dupont François 12 Dujardin Nicole 14

Exercice 5 : Moyenne des élèves
Fichier : exercice5.sh

Données : Utilisez le fichier NotesEleves.txt qui contient : Durand 12 9 14 Lucas 8 11 4 Martin 9 12 1

Objectif : Créez un script qui prend le fichier en paramètre (ex. ./exercice5.sh NotesEleves.txt), affiche le nom de chaque élève et calcule leur moyenne basée sur leurs trois notes (arrondie à 2 décimales si possible).

Exemple d’exécution : ./exercice5.sh scripts/NotesEleves.txt Élève : Durand Moyenne : 11.67 Élève : Lucas Moyenne : 7.67 Élève : Martin Moyenne : 7.33

Exercice 6 : Inverser une chaîne
Fichier : exercice6.sh
Objectif : Créez un script qui demande à l’utilisateur de saisir une chaîne de caractères (ex. "hello") et affiche cette chaîne inversée (ex. "olleh").
Exemple d’exécution : Entrez une chaîne : hello olleh
Exercice 7 : Jeu du pendu (Hangman)
Fichier : hangman.sh
Objectif : Créez un jeu du pendu où :
Un mot est choisi aléatoirement dans une liste prédéfinie (ex. "linux", "bash", "git").
Le mot est affiché avec des tirets pour les lettres non devinées (ex. _ _ _ _ _ pour "linux").
À chaque tour, demandez une lettre à l’utilisateur.
Si la lettre est incorrecte, affichez une représentation ASCII du pendu qui évolue (6 erreurs maximum avant de perdre). Utilisez des "images" ASCII pour illustrer les étapes du pendu (voir exemple ci-dessous).
Si la lettre est correcte, mettez à jour le mot affiché avec la lettre devinée.
À la fin, indiquez si le joueur a gagné ou perdu.
Exemple d’exécution (simplifié) :
Mot : _ _ _ _ _ Vies : 6

========= Entrez une lettre (ou q pour quitter) : l Mot : l _ _ _ _ Vies : 6

========= Entrez une lettre (ou q pour quitter) : x Mot : l _ _ _ _ Vies : 5

O

=========

(Continue jusqu’à gagner ou perdre avec des étapes ASCII comme ci-dessous.)

Étapes ASCII du pendu (exemple à adapter) :
6 vies :
=========

5 vies :
O

=========

4 vies :
O

|

=========

3 vies :
O

/|

=========

2 vies :
O

/|\

=========

1 vie :
O

/|\

/

0 vies (perdu) :
O

/|\

/ \

Conseils
Testez vos scripts avant de les soumettre.
Rendez chaque script exécutable avec : chmod +x scripts/<nom_du_fichier>.sh
