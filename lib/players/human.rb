 module Players
  class Human < Player

    def move(input)
      puts "Enter a number from 1 to 9"
      gets
      # input.cells[gets.to_i]
    end
  end
 end
