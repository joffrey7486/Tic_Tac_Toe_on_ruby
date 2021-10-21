class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :players_array, :board, :current_player, :status

  def initialize(player1_name, player2_name)
    # Créé 2 joueurs et les mets dans un array, créé un board, met le status de jeu à "on going", et défini un current_player
    @players_array = Array.new
    @players_array  << Player.new(player1_name, "X".yellow.bold)
    @players_array  << Player.new(player2_name, "O".cyan.bold)
    @board = Board.new
    @status = "on going"
    @current_player = @players_array[0]
  end
  
  def turn
    # Lance le tableau de la partie
    Show.new.show_board(board, @players_array)
    
    # Appel la méthode playturn  pour lancer la partie
    @board.play_turn(@current_player)
    @status = board.victory?
    
    # A la fin d'un tour si status n'est pas on going procède au changement de joueur
    if @status == "on going"
      if @current_player == @players_array[0]
        @current_player = @players_array[1]
      else
        @current_player = @players_array[0]
      end
    end
    @current_player.win_count += 1 if @status == "victory"

  end
  
  def new_round
    # Relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @board = Board.new
    @status = "on going"
  end
  
  def game_end
    # Permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    Show.new.show_board(board, @players_array)
    if @status == "null"
      puts "VOUS PUEZ \u{1f4a9} !!!!".light_black.bold
    else
      puts "Bravo #{@current_player.name}, t'es le meilleur!!".light_red.bold
    end
  end

end