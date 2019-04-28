require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand_1 = deal_card
  total = hand_1
  hand_2 = deal_card
  total += hand_2
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  answer = get_user_input
  case answer
  when "h"
    total += deal_card
  when "s"
  else
    invalid_command
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  round_1 = initial_round
  total = hit?(round_1)
  display_card_total(total)
  until total > 21
    total += hit?(total)
  end
  end_game(total)
end
