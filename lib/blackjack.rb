def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  input=gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
total1=deal_card+deal_card
 display_card_total(total1)
 total1
end

def hit?(input)
  # code hit? here
  # prompt_user(i)
  # puts i
  prompt_user
  # get_user_input
  if get_user_input=="h"
      input=input+deal_card
     end
     input
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
# calls on the #welcome method, 
#   then on the #initial_round method, 
#   then calls #hit? and #display_card_total methods
#   -until- the card sum is greater than 21,
#   then calls on the #end_game method"
def runner
  # code runner here
  # total=0
  welcome
  input=initial_round
  until input > 21 
  input=hit?(input)
   display_card_total(input)
end
end_game(input)
end



    
