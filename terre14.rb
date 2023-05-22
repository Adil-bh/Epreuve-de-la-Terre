=begin

*1 On récupère les entiers en argument
*2 On les insère dans 2 tableaux : liste_entiers et liste_entiers_tampon
*3 On transfère liste_entiers_tampon dans l'ordre croissant dans liste_entier_tri 
*4 Comparer liste_entiers et liste_entiers_tri
*5 Si liste_entier = liste_entiers_tri => Triée sinon Pas triée

	
=end

arguments = ARGV
liste_entiers = []
liste_entiers_tampon = []
liste_entiers_tri = []

if arguments.to_s.count("a-zA-Z") > 0 || arguments.length == 0
	print "Erreur."
else

	i = 0
	arguments.each do
		liste_entiers.insert(-1,arguments[i].to_i)
		liste_entiers_tampon.insert(-1,arguments[i].to_i)
		i = i + 1
	end



	for ind in 1..liste_entiers_tampon.length
		minimum = liste_entiers_tampon.min
		liste_entiers_tri.insert(-1,minimum)
		liste_entiers_tampon.delete(minimum)
	end


	if liste_entiers == liste_entiers_tri
		puts "Triée !"
	else
		puts "Pas triée !"
	end
end
	