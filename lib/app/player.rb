# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o")

class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :symbol
  
    
    def initialize(name, symbol)
      # Prend le speudo du joueur
      @name = name
      # Prend le symbol du joueur à la création
      @symbol = symbol
    end
end  