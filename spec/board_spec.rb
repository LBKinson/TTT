require "spec_helper"

module TTT
	describe Board do
		# tests
		context "#initialize" do
			it "is initialized" do
				board = Board.new
				expect(board)
			end

			it "initializes with a grid" do
				expect{ Board.new(grid: "grid") }
			end

			it "has a grid system of 9 spaces" do
				board = Board.new
				expect(board.grid.size).to eq(9)
			end

			it "has a board system with default 3 rows" do
				board = Board.new
				expect(board.row.size).to eq(3)
			end

			it ""


		end

	end

end
