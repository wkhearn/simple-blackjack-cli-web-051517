require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  cards = 0
  2.times do
    cards += deal_card
  end
  display_card_total(cards)
  return cards
end

def hit?(cards)
  prompt_user
  answer = get_user_input
  if answer == 's'
    return cards
  elsif answer == 'h'
    return cards += deal_card
  else
    invalid_command
    #prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
  while cards < 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
