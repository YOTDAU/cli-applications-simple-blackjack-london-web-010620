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

def hit?
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
  total
else
  
end

describe "#hit?" do
  it "calls on #prompt_user then #get_user_input" do
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect(self).to receive(:get_user_input).and_return("s")
    hit?(7)
  end

  it "returns an integer which is the card total" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(20)).to eq(20)
  end

  it "does not deal another card if user types 's'" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(7)).to eq(7)
  end

  it "deals another card when user types 'h'" do
    expect(self).to receive(:get_user_input).and_return("h")
    expect(self).to receive(:deal_card).and_return(7)
    expect(hit?(7)).to eq(14)
  end

  it "displays the invalid command message and prompts the user again if a user inputs something other than 'h' or 's'" do
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect($stdout).to receive(:puts).with("Please enter a valid command")
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect(self).to receive(:get_user_input).and_return("k")
    expect(self).to receive(:get_user_input).and_return("s")
    
    hit?(7)
  end

end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
