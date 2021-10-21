# cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game
class Application

  attr_accessor :game

  def ask_for_names
    puts "Salut Joueur 1, quel est ton nom ?"
    player1_name = gets.chomp
    puts "Super ! Voici ton symbole -->  X"
    sleep 0.5
    puts "\nHello joueur 2, et toi quel est ton nom ?"
    player2_name = gets.chomp
    puts "Super ! Pour toi ce sera -->  O"
    sleep 2
    return [player1_name, player2_name]
  end

  def perform
    Welcome.new.welcome_screen
    # Demande aux joueurs leurs nom, les enregistres et leur indique leurs symboles de partie
    @game = Game.new(ask_for_names)
    
    # Boucle principale
    while true
      # Tant que le status est en "on going" les tours se lancent 
      while @game.status == "on going"
        @game.turn
      end
      
      @game.game_end
      puts "Voulez vous contiuer ? O/n"
      
      case gets.chomp
      when "O" then @game.new_round
      when "n" 
        puts "See you soon !!"
        sleep 1
        exit
      else
        puts "Ce n'est pas une entrée valide..."
        sleep 1
      end
    end
  end

  
end