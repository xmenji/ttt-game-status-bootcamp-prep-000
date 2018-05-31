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
  
  board.each do |i|
    p1 = i[0]
    p2 = i[1]
    p3 = i[2]
    
    if p1 == "X" && p2 == "X" && p3 == "X"
      return Array.new(i)
    elsif p1 == "O" && p2 == "O" && p3 == "O"
      return Array.new(i)
    end 
  end
  
  return FALSE
end