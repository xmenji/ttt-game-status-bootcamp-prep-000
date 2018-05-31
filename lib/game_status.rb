# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row
  [6,7,8], #last row 
  [0,3,6], #column 1 
  [1,4,7], #column 2 
  [2,5,8], #column 3
  [0,4,8], #diagonal left to right
  [2,4,6], #diagonal right to left 
  ]

def won?(board)
  
  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
  end
  
  if position_1 == "X" && 
    position_2 == "X" &&
    position_3 == "X" 
    
    return win_combination
  else
    FALSE
  end 
end

def full?(board)
  
  board.each do |i|
    
    if i == " " || i == nil
      FALSE
    else
      TRUE
    end
  
end