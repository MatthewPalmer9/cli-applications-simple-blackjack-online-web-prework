def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets
  answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 card1 = deal_card
 card2 = deal_card
 sum = card1 + card2
 display_card_total(sum)
 return sum
end

def hit?(card_total)
  ask = prompt_user
  answer = get_user_input
  
  while answer != 'h' || 's'
    invalid_command
    prompt_user
    answer = get_user_input
  end 
  if answer == 'h'
    card_total += deal_card
  elsif answer == 's'
    return card_total
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
  totalScore = initial_round
  until totalScore > 21
    totalScore = hit?(totalScore)
  end
  end_game(totalScore)
end