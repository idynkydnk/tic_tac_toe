require "game"

describe Game do
  before :all do
    @choice = "x"
    @temp_class = Game.new
    @temp_class.instance_variable_set(:@board_positions, {one: "x", two: "x", three: "x"})
  end

  describe ".game_over?" do
    context "3 x's across the top" do
      it "should return true" do
        expect(@temp_class.game_over?(@choice)).to be(true)
      end
    end
  end
end
