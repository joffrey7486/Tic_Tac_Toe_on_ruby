# Tic-Tac-Toe

## 1. Règles du jeu
- Ce jeu se jouera à deux joueurs (humains), 
- Le plateau de jeu est composé de 9 cases allant de "A1" à "C3", de "A" à "C" de haut en bas et "1" a "3" de gauche à droite.

                        A1 | A2 | A3

                        B1 | B2 | B3

                        C1 | C2 | C3

- Le jeu se déroule à tour de rôle où chacun choisi où remplir une case dans le but d'aligner 3 symboles pour la victoire !

- Si la grille est pleine avant une ligne de 3 cases alors il y a match nul.

## 2. Sous le capot
### Lancement du jeu :
Le jeu se lance executant `ruby app.rb`
### Les fichiers :
- **application.rb** : contient la classe `Application` qui orchestre toutes les autres classes
- **game.rb** : contient la classe `Game` qui initialise et gère tous les paramètres des parties
- **board.rb** : contient la classe `Board` qui contient le squelette et la mécanique du plateau de jeu
- **player.rb** : contient la classe `Player` qui instancie tous les attributs concernant les joueurs
- **board_case.rb** : contient la classe `BoardCase` qui contient les attributs de chaques cases du plateau

## 3. Crédits
Une production [joffrey7486](https://github.com/joffrey7486) et [fleopaulD](https://github.com/fleopaulD) 

## 4. Licence
MIT