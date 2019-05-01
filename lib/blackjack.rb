

def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input

  answer = gets.chomp
  answer
  
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
  # code #end_game here
end

def initial_round
 hand = (deal_card + deal_card)
 display_card_total(hand)
 return hand
end

cardtotal = initial_round

def hit?(cardtotal)
  prompt_user
  
  input = get_user_input
  hit = cardtotal + deal_card
  
  if input == "h"
    hit
  elsif input == "s"
    cardtotal
  else
    invalid_command
  end
  
  
end

def invalid_command
  Invalid
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardtotal = initial_round
  until cardtotal > 21
  cardtotal = hit?(cardtotal)
  display_card_total(cardtotal)
end
end_game(cardtotal)
  # code runner here
end
    
