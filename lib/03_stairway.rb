def throw_dice
  puts "Lancez le dé en appuyant sur Enter!"
  #gets.chomp " >"
  result = rand(6) + 1
  puts "Vous avez tiré un #{result}"
  return result
end

def calculate_step (number)
  if(number == 5 || number == 6)
    puts "Vous montez d'une marche!"
    $player_position += 1 # avance d'une marche
  elsif(number == 2 || number == 3 || number ==4)
    puts "Vous restez sur votre marche!"
    #reste sur sa marche
  elsif(number == 1)
    puts "Vous descendez d'une marche!"
    $player_position -= 1 # descend d'une marche
  else
    puts "Bug! Ce programme est une daube interstellaire!"
    #erreur
  end
end

def announce_position(int)
 # puts "Votre position est la marche n°: #{int}"
end

def welcome
  puts "Bienvenue dans ce jeu! Tu es tout en bas de la pyramide et tu vas devoir monter en lançant les dés pour monter. Tu es prêt? Tape entrée pour continuer"
  #gets.chomp " >"
end

def win
  puts "Vous avez gagné! Bravo!"
end
def average_finish_time
  count = 0
  result = []
  while count < 100
    $steps = 0
    perform()
    result.push($steps)
    count +=1
  end
  total_sum = 0
  result.each do |entry|
    total_sum += entry
  end
  average = total_sum / 100
  return average
end
def perform
  $player_position = 0
  welcome() 
  while ($player_position < 10)
    announce_position($player_position)
    nbr = throw_dice()
    calculate_step(nbr)
    if $steps != nil
      $steps += 1
    end
  end
  win()
  
end

loop do
  puts "Hello super joueur de THP, veux-tu jouer une seule partie (tapez 1) ou bien lancer une série de tests (tapez 2)?"
  $choice = gets.chomp.to_i
  puts "Vous avez choisi #{$choice}"
  break if $choice == 1 || $choice == 2
end
if($choice == 1)
  perform()
else
  final_score = average_finish_time()
  puts "La moyenne est de #{final_score} coups par partie!"
end


