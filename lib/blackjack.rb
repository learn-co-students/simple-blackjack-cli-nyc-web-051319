def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  variable_for_safekeeping = deal_card

  variable_for_safekeeping.times do
    puts rand(1..11)

  end
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end


def get_user_input
  gets "h"
  # code #get_user_input here
end



def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round (deal_card)
  sum = deal_card + deal_card
  display_card_total (sum)

end

def hit? (current_card_total)
  prompt_user
user = get_user_input

if user == get_user_input
  puts 


  elsif user == "Type 'h' to hit or 's' to stay"
    puts 's'

  else
    puts "Type 'h' to hit or 's' to stay"

current_card_total = get_user_input
end
end

def invalid_command
  puts "Please enter vlaid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  display_card_total
until card_total > 21
end_game
  # code runner here
end
