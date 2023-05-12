arguments = ARGV
nombre = ARGV[0]
exposant = 0.5

#Racine carrée = x^1/2
#Interrogation : Faut il que la sortie soit un entier ou un float ?
if nombre == nil || arguments.length != 1 || nombre.to_s.count("a-zA-Z") > 0
	puts "Erreur"
else
	resultat = nombre.to_i**exposant
	puts resultat.to_i
end