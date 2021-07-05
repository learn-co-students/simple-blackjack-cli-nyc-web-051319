def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
answer = gets.chomp
answer
end

def end_game (over)
  puts "Sorry, you hit #{over}. Thanks for playing!"
end

def initial_round
 card_one = deal_card()
 card_two = deal_card()
 total = card_one + card_two
 display_card_total(total)
 total
end

def hit?(total)
  prompt_user()
  input = get_user_input()
  if input == "h"
    total += deal_card()
  elsif input == "s"
    total
  else
    invalid_command()
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
  total = initial_round()
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
