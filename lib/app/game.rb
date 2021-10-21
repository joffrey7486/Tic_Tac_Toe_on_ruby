#cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.
#Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes comme "quel joueur doit jouer ?", "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
#Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.

class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :players_array, :board, :current_player, :status

    def initialize(player1_name, player2_name)
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @players_array = Array.new
      @players_array  << Player.new(player1_name, "X")
      @players_array  << Player.new(player2_name, "O")
      @board = Board.new
      @status = "on going"
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
        @board.play_turn(@current_player)
        @status = board.victory?
        if @status == "on going"
          @current_player = @players_array[0] if @current_player == @players_array[1]
          @current_player = @players_array[1] if @current_player == @players_array[0]
        end
    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
      @board = Board.new
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end    
  
end