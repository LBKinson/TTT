module TTT
	class Board
		attr_accessor :grid
		def initialize(input = {})
			@grid = input.fetch(:grid, normal_board)
		end

		def grid_system
			Array.new(9)
		end

		def row
			Array.new(3)
		end

		def normal_board
			Array.new(3) { Array.new(3) { Square.new } }
		end

		def pick_square(x, y)
			grid[y][x]
		end
	end

end