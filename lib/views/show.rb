class Show
  # cette classe est une sorte de view. Elle affiche l'état du plateau de jeu à un instant T.

  def show_board(board, players_array)
    system("clear")
    puts "Scores :".light_blue.underline
    puts "#{players_array[0].name} #{players_array[0].win_count} - #{players_array[1].win_count} #{players_array[1].name}"
    puts
    puts " "
    puts "            | 1 | 2 | 3 "
    print "         "
    puts "-".blue.bold * 15
    puts "          A | #{board.array[0].content} | #{board.array[1].content} | #{board.array[2].content} "
    print "         "
    puts "-".white.bold * 15
    puts "          B | #{board.array[3].content} | #{board.array[4].content} | #{board.array[5].content} "
    print "         "
    puts "-".red.bold * 15
    puts "          C | #{board.array[6].content} | #{board.array[7].content} | #{board.array[8].content} "
    puts " "
  end
  
end
