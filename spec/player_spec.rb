require "rspec"
require "./lib/player.rb"

describe "Player" do
  describe "initialize" do
    it "Should initialize with player name and number set" do
      player1 = Player.new("KeMonté", 1)
      player1.should be_an_instance_of Player
    end

    it "checks to see if name is set" do
      player1 = Player.new("KeMonté", 1)
      player1.name.should eq "KeMonté"
    end
  end
end
