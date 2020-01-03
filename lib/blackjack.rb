def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  hand_total = card_1 + card_2
  display_card_total(hand_total)
  return hand_total 
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
    prompt_user
    get_user_input
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
  total = initial_round
  if 
end

describe "#runner" do
  before(:each) do
    def get_user_input
      "h"
    end 
  end

  it "calls on the #welcome method, 
  then on the #initial_round method, 
  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,
  then calls on the #end_game method" do

    expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
    expect(self).to receive(:get_user_input).and_return("h")

    expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
    expect($stdout).to receive(:puts).with("Your cards add up to 20")
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect($stdout).to receive(:puts).with("Your cards add up to 30")
    expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
    runner
  end
end
    
