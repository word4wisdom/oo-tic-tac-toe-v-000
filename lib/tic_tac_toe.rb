<<<<<<< HEAD

=======
>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270
require 'pry'

class TicTacToe
    def initialize(board = nil)
    @board = board || Array.new(9, " ")
   end
 


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

 def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

 
def input_to_index(user_input)
  "#{user_input}".to_i - 1
end


<<<<<<< HEAD
def move(index, token)
=======
def move(index, token = "X")
>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270
  @board[index] = token 
end
  

def position_taken?(index)
  @board[index] !=  " "
  end

<<<<<<< HEAD
  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end
=======
def valid_move?(index)
if index.between?(0,8) && !position_taken?(index)
true
     end
  end 

>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270

 

def turn_count
<<<<<<< HEAD
  counter = 0
  @board.each do |spaces|
    if spaces == "X" || spaces == "O"
      counter += 1
    end
  end
  counter
=======
  @board.count{|token| token == "X" || token == "O"}
>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270
end

def current_player
  turn_count % 2 == 0 ? "X" : "O"
end


  def turn
    puts "Please enter a number (1-9):"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      token = current_player
      move(index, token)
    else
      turn
    end
    display_board
  end
end

<<<<<<< HEAD

   def won?
    WIN_COMBINATIONS.any? do |combo|
      if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
        return combo
       end
     end
  end 
 
=======
 def won?
  WIN_COMBINATIONS.any? do |index|
    @board[index[0]] == @board[index[1]] &&
    @board[index[1]] == @board[index[2]]
    position_taken?(index[0])
    end
 end
>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270

def full?
  @board.all?{|element| element == "X" || element == "O"}
end

def draw?
  !won? && full?
end


def over?
  won? || draw?
end

def winner
  if winning_combo = won?
    @board[winning_combo.first]
  end
end

 def play
  while !over?
    turn
  end
  if won?
    puts "Congratulations #{winner}!"
<<<<<<< HEAD
  elsif draw?
    puts "Cat's Game!"
    end
  end
end




=======
  elsif draw?(board)
    puts "Cats Game!"
  end
end

binding.pry
  
>>>>>>> d06aa3c3df74804569bcf5cc5e877dcc72ed7270

