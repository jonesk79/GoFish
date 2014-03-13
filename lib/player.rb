class Player
  attr_reader :name, :player_number, :hand

  def initialize(name, player_number)
    @name = name
    @player_number = player_number
  end

  def change_hand(hand_array)
    @hand = hand_array
  end

  def check_hand(card)
    @hand.include?(card)
  end

  def give_card(card)
    @hand.delete(card)
  end

  def take_card(card)
    @hand << card
  end
end
