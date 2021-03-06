require './lib/player.rb'

class Game
  attr_reader :player1, :player2, :deck

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2

    card_values = ["A", "2", "3", "4", "5", "6",
                   "7", "8", "9", "10", "J", "Q",
                   "K"]

    suits = ["S", "H", "C", "D"]

    @deck = []

    suits.each do |suit|
      card_values.each do |card|
        @deck << suit + card
      end
    end

    player1.change_hand(get_hand)
    player2.change_hand(get_hand)
  end

  def get_hand
    hand = []

    7.times do
      card = @deck.sample
      @deck.delete(card)

      hand << card
    end

    hand
  end

  def exchange_card(card, asker)
    if asker == "player1"
      if player2.check_hand(card)
        player2.give_card(card)
        player1.take_card(card)
      end
    elsif asker == "player2"
      if player1.check_hand(card)
        player1.give_card(card)
        player2.take_card(card)
      end
    end
  end
end
