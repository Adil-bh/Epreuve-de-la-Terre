=begin

1* On récupère un nombre en argument (Avec gestion d'erreurs)
2* Faire une boucle, pour chaque itération : faire {Nombre en argument} % 1..{Nombre en argument}
3* Si reste = O : mettre la valeur du diviseur dans tableau_diviseurs
4* Si taille tableau = 2 et les diviseurs sont 1 et {Nombre en argument} alors => Nombre Premier
5* Sinon pas nombre premier

=end
arguments = ARGV
nombre = arguments[0].to_f
tableau_diviseurs = []

if nombre == nil || arguments.length != 1 || nombre.to_s.count("a-zA-Z") > 0 || nombre == 0 || nombre == 1
	puts "Erreur"
else

	for diviseur in 1..nombre
		resultat = nombre / diviseur
		reste = nombre % diviseur

		if reste == 0
			tableau_diviseurs.insert(-1, diviseur)
		end
	end

	#print tableau_diviseurs

	if tableau_diviseurs.length == 2
		puts "Oui, #{nombre.to_i} est un nombre premier."
	else
		puts "Non, #{nombre.to_i} n'est pas un nombre premier."
	end
end