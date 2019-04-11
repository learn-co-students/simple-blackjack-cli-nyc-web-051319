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
  # code #initial_round here
end

def hit? (current_card_total)
  if

    'h'

  elsif 's'

  else


  # code hit? here
end


def invalid_command
  puts "Please enter vlaid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
