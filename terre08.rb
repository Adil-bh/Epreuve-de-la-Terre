
nombre = ARGV[0]
exposant = ARGV[1]

if exposant.to_i < 0 || nombre.to_s.count("a-zA-Z") >0 || exposant.to_s.count("a-zA-Z") >0
	puts "Erreur"
else
	resultat = nombre.to_i**exposant.to_i
	puts resultat
end
