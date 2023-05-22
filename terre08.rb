arguments = ARGV
nombre = ARGV[0]
exposant = ARGV[1]

if nombre == nil || exposant == nil || arguments.length != 2
	puts "Erreur"
else
	if exposant.to_i < 0 || nombre.to_s.count("a-zA-Z") >0 || exposant.to_s.count("a-zA-Z") >0
		puts "Erreur"
	else
		resultat = nombre.to_i**exposant.to_i
		puts resultat
	end
end