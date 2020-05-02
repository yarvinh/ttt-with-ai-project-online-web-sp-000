class Board
  attr_accessor :cells
  def initialize
    @cells = [" ", " "," "," ", " ", " ", " "," "," "]
  end

  def display
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def reset!
    @cells = [" ", " "," "," ", " ", " ", " "," "," "]
      # counter = 1
      # while cells.length < 9
      #     cells << " "
      #     cells.each{|a| a.replace(" ")}
      #     counter += 1
      # end
  end

  def position(position)
    index = position.to_i - 1
    if index >= 0
    cells[index]
    end
  end

  def full?
    cells.all?{|e| e != " "}
  end
  def turn_count
    cells.select{|e| e != " "}.size
  end

  def taken?(index)
    position(index) == "X" || position(index) == "O"
  #    true
  #  else false
  #  end
  end

  def valid_move?(index)
     position(index) == " "
    #   true
    #  else false
    # end
  end
  def update(position, player)
    index = position.to_i - 1
    cells[index].replace(player.token)
  end

end
