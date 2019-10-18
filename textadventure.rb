def werewolf
  system ('clear')
  message = ""
  message += "A werewolf springs out upon you! In one slash he slits your throat. "
  message += "You are now dead."
  message += "\n"
  message += "Game over!"
  puts message
end

def goblin
  system ('clear')
  message = ""
  message += "A sneaky goblin leaps out into your path. You try to duck and "
  message += "weave past him, but he anticipates your every move. With a "
  message += "quick wave of his hand he enchants you with a spell! You fall "
  message += "down limply on the ground. You are dead."
  message += "\n\n"
  message += "Game over!"
  puts message
end

def initial
  system ('clear')
  message = ""
  message += "You're in a dark wood. All you can see is trunks of trees, and "
  message += "and the glowing eyes of forest creatures blimking menacingly at"
  message += "you. You ponder what to do. There could be danger at every turn! "
  message += "You can't go back of course. "
  message += "\n\n"
  message += "Do you go forward, left or right?"
  message += "\n"
  puts message
end

def forward_one
  system ('clear')
  message = ""
  message += "You move forward gingerly. You hear rustling noises coming from "
  message += "every side, but nothing appears out of the undergrowth. You are "
  message += "safe! "
  message += "\n\n"
  message += "What now? Should you go forward, left or right?"
  message += "\n"
  puts message
end

def game_win
  system ('clear')
  message = ""
  message += "You see a light up ahead! You stumble forward and before you know "
  message += "it you it you are out of the trees! You are saved!"
  message += "\n\n"
  message += "You win!"
  puts message
end

print initial
user_input = gets.chomp
user_input = user_input.upcase
if user_input == "LEFT" || user_input == "GO LEFT"
  werewolf
  exit
elsif user_input == "RIGHT" || user_input == "GO RIGHT"
  goblin
  exit
else
  forward_one
end
user_input = gets.chomp
user_input = user_input.upcase
if user_input == "LEFT" || user_input == "GO LEFT"
  werewolf
  exit
elsif user_input == "RIGHT" || user_input == "GO RIGHT"
  goblin
  exit
else
  game_win
end
