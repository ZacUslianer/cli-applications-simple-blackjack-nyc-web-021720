require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  dealt_hand = rand(1..11)
  dealt_hand
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
input = gets.chomp
input
end

def end_game(final_sum)
puts "Sorry, you hit #{final_sum}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
sum
end

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sleep 0.75
  card_total = initial_round 
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

runner 
