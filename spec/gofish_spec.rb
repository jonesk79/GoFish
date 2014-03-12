require 'rspec'
require './lib/gofish.rb'
require './lib/player.rb'

describe Game do
  describe "initialize" do
    it 'initializes with a full deck of cards and 2 player characters' do
      player1 = Player.new("KeMonté", 1)
      player2 = Player.new("Matt", 2)
      test_game = Game.new(player1, player2)
      test_game.should be_an_instance_of Game
    end

    it 'verifying that players and deck of cards is correctly built' do
      player1 = Player.new("KeMonté", 1)
      player2 = Player.new("Matt", 2)
      test_game = Game.new(player1, player2)
      test_game.player1.should eq player1
      test_game.player2.should eq player2
    end

    it 'deals players initial hand' do
      player1 = Player.new("KeMonté", 1)
      player2 = Player.new("Matt", 2)
      test_game = Game.new(player1, player2)
      test_game.player1.hand.length.should eq 7
      test_game.player2.hand.length.should eq 7
      test_game.deck.length.should eq 38
    end
  end
end
