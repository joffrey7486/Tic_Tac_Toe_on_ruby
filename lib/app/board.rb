class Board
  
  attr_accessor :array, :count
  
  def initialize
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @array = []
    @count = 0
    # On rentre toute les cases avec leur nom comme identifiant 
    @array << BoardCase.new('A1')
    @array << BoardCase.new('A2')
    @array << BoardCase.new('A3')
    @array << BoardCase.new('B1')
    @array << BoardCase.new('B2')
    @array << BoardCase.new('B3')
    @array << BoardCase.new('C1')
    @array << BoardCase.new('C2')
    @array << BoardCase.new('C3')
  end

  def box_index(user_input)
    # Retourne la position de la case dans l'array en fonction de son nom (A1, A2, B3, etc...)
    @array.each_index do |i|
      return @array[i] if @array[i].position == user_input
    end
  end

  def box_is_free?(box)
    # Renvoi true si la case est vide
    begin
      box_index(box).content == (" ") ? true : false
    rescue
      return false      
    end
  end

  def box_content(box)
    return box_index(box).content
  end

  def play_turn(player)
    #1) demande au bon joueur ce qu'il souhaite faire
    puts "Hey #{player.name}, c'est à toi de jouer ! Quelle case choisis-tu ?".blue.bold
    user_input = ""
    while !box_is_free?(user_input)
      user_input = gets.chomp
      exit if user_input == "quit"
    end
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    box_index(user_input).content = player.symbol
    @count += 1
  end

  # Vérife que l'emplacement n'est pas vide et return true si une ligne est complète 
  def complete_line?(box1, box2, box3)
    if !box_is_free?(box1) && !box_is_free?(box2) && !box_is_free?(box3)
      (box_content(box1) == box_content(box2)) && (box_content(box2) == box_content(box3)) ? true : false
    else
      false
    end
  end
  
  def victory?
    # Vérifie le plateau et indique s'il y a un vainqueur ou match nul
    if complete_line?("A1", "A2", "A3") ||
       complete_line?("B1", "B2", "B3") ||
       complete_line?("C1", "C2", "C3") ||
       complete_line?("A1", "B1", "C1") ||
       complete_line?("A2", "B2", "C2") ||
       complete_line?("A3", "B3", "C3") ||
       complete_line?("A1", "B2", "C3") ||
       complete_line?("A3", "B2", "C1")
      return "victory"
    elsif @count == 9
      return "null"
    else
      return "on going"
    end
  end

  
end