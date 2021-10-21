# cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game

class Application

  attr_accessor :game

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    puts "Salut joueur 1, quel est ton nom ?"
    player1_name = gets.chomp
    puts "Super ton symbole sera X"
    sleep 1
    puts "Salut joueur 2, quel est ton nom ?"
    player2_name = gets.chomp
    puts "Super ton symbole sera O"
    sleep 1
    @game = Game.new(player1_name, player2_name)
    while @game.status == "on going"
      @game.turn
    end
    
  end

  
end