class Board
  
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  attr_accessor :array, :count
  

  def initialize
    #TO DO :
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
    box_index(box).content
  end

  def play_turn(player)
    #1) demande au bon joueur ce qu'il souhaite faire
    puts "Quelle case choisis-tu ?"
    user_input = ""
    while !box_is_free?(user_input)
      user_input = gets.chomp
    end
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    box_index(user_input).content = "X"
    @count += 1
    
  end

  def complete_line?(box1, box2, box3)
    (box1 == box2) && (box2 == box3) ? true : false
  end
  
  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    complete_line?("A1", "A2", "A3")

    # if 
    #  B1.value
  end

  
end