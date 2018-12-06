def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
   "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  a = get_user_input
  if a == "h" 
     num = deal_card
  elsif a == "s" 
      num = 0
  else
    invalid_command
    prompt_user
  end
    return card_total + num 
end

def invalid_command
  # code invalid_command here
  puts  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum_of_cards = initial_round
    until sum_of_cards >= 21 
      sum_of_cards = hit?(sum_of_cards)
    end
  end_game(sum_of_cards)
end
    
