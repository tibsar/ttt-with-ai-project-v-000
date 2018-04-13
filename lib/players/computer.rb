module Players
  class Computer < Player
    # 1 | 2 | 3
    # 4 | 5 | 6
    # 7 | 8 | 9

    

    WIN_COMBINATIONS = [
    [1,2,3], # Top row
    [4,5,6], # Middle row
    [7,8,9], # Bottom row
    [1,4,7],
    [2,5,8],
    [3,6,9],
    [1,5,9],
    [3,5,7]
  ]
    

    def move(board)

      ### CAN WE WIN ON NEXT MOVE? 
      ###   YES: 
      ###       TAKE THAT SPOT 
      ###   NO: 
      ###       CAN OUR OPPONENT WIN ON THE NEXT MOVE? 
      ###           YES:  
      ###              TAKE THAT SPOT 
      ###           NO: 
      ###              PICK POSITION THAT SHOWS UP IN THE MOST WINS 

      # if available, take the middle spot (5)
      

      
      # else take a corner (1, 3, 7, 9) #=> odd numbers on board, with the exception of 5 
      
      
    end
























    # def move(board)
    #   corners = ["1", "3", "7", "9"]
    #
    #   unwanted = ["2", "4", "6", "8"]
    #
    #   # First move, take center spot if available
    #   if !board.taken?(5)
    #     move = "5"
    #   else
    #     corners.each do |corner|
    #       if !board.taken?(corner.to_i)
    #         return corner
    #       end
    #     end
    #
    #     unwanted.each do |unwanted|
    #       if !board.taken?(unwanted.to_i)
    #         return unwanted
    #       end
    #     end
    #   end
    #
    #   return move
    # end

    # def move(board)
    #   move = nil
    #   #When going first, if the middle spot's empty, we will take it
    #   if !board.taken?(5)
    #     move = "5"
    #   # If going second and the middle spot is taken, take the upper left corner
    #   elsif board.turn_count == 1
    #     move = "1"
    #   #If we did take the middle spot, take a corner
    #   elsif board.turn_count == 2
    #     move = [1, 3, 7, 9].detect{ |i| !board.taken?(i)}.to_s
    #   elsif board.turn_count == 3 && (board.position(1) == board.position(9)  || board.position(3) == board.position(7))
    #     move = "2"
    #   else
    #     Game::WIN_COMBINATIONS.detect do |combo|
    #       #Check if we can win
    #       if combo.select{ |i| board.position(i+1) == token}.size == 2 && combo.any?{|i| board.position(i+1) == " "}
    #         move = combo.select{ |i| !board.taken?(i+1)}.first.to_i.+(1).to_s
    #       elsif combo.select{ |i| board.position(i+1) != " " && board.position(i+1) != token}.size == 2 && combo.any?{ |i| board.position(i+1) == " "}
    #         move = combo.select{ |i| !board.taken?(i+1)}.first.to_i.+(1).to_s
    #       end
    #     end
    #
    #     move = [1, 2, 7, 9, 2, 4, 6, 8].detect{ |i| !board.taken?(i)}.to_s if move == nil
    #   end
    #
    #   move
    # end
  end
end
