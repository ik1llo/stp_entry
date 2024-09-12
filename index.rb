options = ["scissors", "paper", "rock"]

while true
  print "-------------------------\n\n1. scissors\n2. paper\n3. rock\n4. exit\n\n[choice]: "
  user_choice = gets.chomp.to_i

  case user_choice
  when 1
    user_choice = "scissors"
  when 2
    user_choice = "paper"
  when 3
    user_choice = "rock"
  when 4
    break
  else
    puts "wrong choice..."
    next
  end

  bot_choice = options.sample
  print "\nyour choice - #{ user_choice }\n"
  print "bot's choice - #{ bot_choice }\n\n"

  if user_choice == bot_choice
    print "RESULTS: Tie!"
  elsif (user_choice == "rock" && bot_choice == "scissors") ||
        (user_choice == "scissors" && bot_choice == "paper") ||
        (user_choice == "paper" && bot_choice == "rock")
    print "RESULTS: You won!"
  else
    print "RESULTS: Bot won!"
  end

  print "\n\n"
end