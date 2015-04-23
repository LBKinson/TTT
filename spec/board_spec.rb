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
				expect(board.grid_system.size).to eq(9)
			end

			it "has a board system with default 3 rows" do
				board = Board.new
				expect(board.row.size).to eq(3)
			end
		end

		context "#normal_board" do
			it "sets a default of 3 rows, containing 3 squares" do
				board = Board.new
				board.normal_board.each do |row|
					expect(row.size).to eq(3)
				end
			end
		end

		context "#pick_square" do
			it "returns square based on x,y coordinates" do
				normal_board = [["","",""], ["","","boom!"], ["","",""]]
				board = Board.new(grid: "normal_board")
				expect(board.pick_square(1,2)).to eq "boom!"
			end
		end

	end

end
