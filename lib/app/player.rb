# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o") et d'un compteur de victoire

class Player
    attr_accessor :name, :symbol, :win_count
  
    
    def initialize(name, symbol)
      # Prend le speudo du joueur
      @name = name
      # Prend le symbol du joueur à la création
      @symbol = symbol
      @win_count = 0
    end
end  