def half_pyramid()
  n = 0
  while n < 1 || n > 25 do
    puts "Salut biche, bienvenue dans ma mega-super HALF-pyramide de la mort qui tue ouech! Combien veux tu d'étages (entre 1 et 25)?"
  print ">"
  n = gets.chomp.to_i
  end
  i = 1
  puts "Voici la super-mega-trop-bien HALF pyramide: "

  while i <= n
    print " " * (n-i)
    puts "#" * i
    i += 1
  end
end

def full_pyramid()
  n = 0
  while n < 1 || n > 25 do
    puts "Salut biche, bienvenue dans ma mega-super FULL-pyramide de la mort qui tue ouech! Combien veux tu d'étages (entre 1 et 25)?"
  print ">"
  n = gets.chomp.to_i
  end
  i = 1
  puts "Voici la super-mega-trop-bien FULL pyramide: "

  while i <= n
    print " " * (n-i)
    puts "#" * (i + (i-1))
    i += 1
  end
end

def wtf_pyramid
  n = 0
  while n < 1 || n > 25 || n % 2 == 0 do
    puts "Salut biche, bienvenue dans ma mega-super WTF-pyramide de la mort qui tue ouech! Combien veux tu d'étages (entre 1 et 25, nombre impair uniquement!)?"
  print ">"
  n = gets.chomp.to_i
  end
  i = 1
  puts "Voici la super-mega-trop-bien WTF pyramide: "
  while i <= n
    print " " * (n-i)
    puts "#" * (i + (i-1))
    i += 1
  end
  i -= 2
  while i > 0
    print " " * (n-i)
    puts "#" * (i + (i-1))
    i -= 1
  end

end
loop do
  puts "Hello, quelle pyramide veux-tu? Tape 1 pour la demi pyramide, tape 2 pour la complète ou tape 3 pour la pyramide en losange hyper chelou!"
  $choice = gets.chomp.to_i
  puts "Vous avez choisi #{$choice}"
  break if $choice == 1 || $choice == 2 || $choice == 3
end
if $choice == 1
  half_pyramid()
elsif $choice == 2
  full_pyramid()
else
wtf_pyramid()
end