def signup
  puts "Hello petit curieux ! D'abord tu vois devoir enregistrer ton mot de passe:"
  print "> "
  mdp = gets.chomp
  return mdp
end

def login (string)
  try = ""
  while (try != string)
    puts "Alors petit curieux tu veux accéder à la zone secrète qui révèle un secret infernal sur Jeremy? Saisis donc ton mot de passe:"
    print "> "
    try = gets.chomp
  end
  welcome_screen()
end

def welcome_screen
  puts "Bienvenue sur l'écran d'accueil. Tu as pu révéler les secret de Jeremy: "
  print "> "
  puts "Jeremy adore se faire fouetter pendant les cours au lieu de faire ses devoirs !!!"
  print "> "
  puts "Jeremy est très content de faire THP malgré ses collègues ennuyeux et qui ont plus d'idées de vannes!"
end

def perform
  mdp = signup()
  login(mdp)
end

perform()