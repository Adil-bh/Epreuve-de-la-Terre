arguments = ARGV
entier1 = arguments[0].to_i
entier2 = arguments[1].to_i
entier3 = arguments[2].to_i
valeur_milieu = nil

if arguments.length != 3 || arguments.to_s.count("a-zA-Z") > 0
	print "Erreur"
else
	# Entier3 > Entier1 > Entier2 ou Entier2 > Entier1 > Entier3
	if entier1 > entier2 && entier1 < entier3 || entier1 > entier3 && entier1 < entier2
		valeur_milieu = entier1
	# Entier3 > Entier2 > Entier1 ou Entier1 > Entier2 > Entier3
	elsif entier2 > entier1 && entier2 < entier3 || entier2 > entier3 && entier2 < entier1
		valeur_milieu = entier2
	# Entier2 > Entier3 > Entier1 ou Entier1 > Entier2 > Entier2
	elsif entier3 > entier1 && entier3 < entier2 || entier3 > entier2 && entier3 < entier1
		valeur_milieu = entier3
	else
		entier1 == entier2  && entier2 == entier3
		print "Erreur."
	end
	puts valeur_milieu
end