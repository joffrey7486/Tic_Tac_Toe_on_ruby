# cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game

class Application

  attr_accessor :game

  def perform
    Welcome.new.welcome_screen
    # Demande aux joueurs leurs nom, les enregistres et leur indique leurs symboles de partie
    puts "Salut joueur 1, quel est ton nom ?"
    player1_name = gets.chomp
    puts "Super ton symbole sera X"
    sleep 0.5
    puts "Salut joueur 2, quel est ton nom ?"
    player2_name = gets.chomp
    puts "Super ton symbole sera O"
    sleep 0.5
    @game = Game.new(player1_name, player2_name)
    
    # Tant que le status est en "on going" les tours ce lance 
    while true
      
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