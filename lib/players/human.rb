module Players
  class Human < Player
    def move(array)
      puts "Please enter 1-9:"
      input = gets.strip
    end
  end
end
