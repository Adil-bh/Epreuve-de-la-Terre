arguments = ARGV
nombre = ARGV[0]
exposant = 2


if nombre == nil || arguments.length != 1 || nombre.to_s.count("a-zA-Z") > 0
	puts "Erreur"
else
	resultat = nombre.to_i**exposant
	puts resultat
end