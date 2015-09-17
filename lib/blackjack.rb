def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  x
end

def hit?(x)
  prompt_user
  input = get_user_input
  if input == "h"
    deal_card + x 
  elsif input == "s"
    x
  else
    invalid_command
  end      
end

def invalid_command
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  score = initial_round
  while score < 21
    score = hit?(score)
    display_card_total(score)
  end
  end_game(score)
end
    
