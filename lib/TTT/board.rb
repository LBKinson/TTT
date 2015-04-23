module TTT
	class Board
		def initialize
			:grid
		end

		def grid
			Array.new(9)
		end

		def row
			Array.new(3)
		end

		def normal_board
			Array.new(3) { Array.new(3) { Square.new } }
		end
	end

end