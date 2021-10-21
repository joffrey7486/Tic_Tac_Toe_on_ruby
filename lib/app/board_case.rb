class BoardCase
  attr_accessor :position, :content

  def initialize(position)
    # Règle sa valeur, ainsi que son numéro de case
    @position = position
    @content = " "
  end
  
end