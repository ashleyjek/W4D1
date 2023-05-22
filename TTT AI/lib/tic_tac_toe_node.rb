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
    children = []
    (0..2).each do |idx1|
      (0..2).each do |idx2|
        if @board.empty?([idx1, idx2])
          new_board = @board.dup
          
          new_board.place_mark([idx1, idx2],mark)
          p new_board
          child = TicTacToeNode.new(new_board, mark)
          children << child
        end
      end
    end
    children

  end
end