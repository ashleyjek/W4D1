require_relative 'tic_tac_toe'


class TicTacToeNode

  attr_reader :board, :mark

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @mark = next_mover_mark
  end

 

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    # p board
    children = []
    # p board
   
    (0..2).each do |idx1|
      (0..2).each do |idx2|
        if board.empty?([idx1, idx2])
          
          new_board = board.dup
          p new_board
          new_board.rows.place_mark([1,1], :x)
          p new_board
          
          # # p new_board
          child = TicTacToeNode.new(new_board, mark)
          # children << child
        end
      end
    end
    p children

  end
end