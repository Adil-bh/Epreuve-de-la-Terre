=begin
	
1* On récupère l'heure en argument (avec gestion d'erreurs)
2* On sépare le string à partir du ':' et on mets l'heure et les minutes dans un tableau
3* Si heure est enter 0 et 11 meridiem = AM et si heure est entre 12 et 23 meridiem = PM (sinon erreur)
4* Si heure PM on formate l'heure à l'aide d'un compteur qui s'incrémente de 0 à 11
	
=end

arguments = ARGV
format_24 = arguments[0]
format_12 = "%2d:%.2i%s"
meridiem = nil
compteur = 0

#Création du tableau [heure : minutes]
tab = format_24.split(':')
heure = tab[0].to_i
minutes = tab[1].to_i

if arguments.length != 1 || format_24.to_s.count("a-zA-Z") > 0 || format_24.to_i < 0 || tab.length != 2
	puts "Erreur"
	else

	if heure.between?(0,11)
		meridiem = "AM"

	elsif heure.between?(12,23)
		meridiem = "PM"

		#Formatage de l'heure 23: => 11:
		for num in 12..23
			if num == heure 
				break
			elsif 
				compteur = compteur + 1
			end
		end


		#Pour éviter d'avoir midi à 0
		if heure != 12
			heure = compteur
		end

	else
		print "Erreur"
	end
	puts format_12 % [heure, minutes, meridiem]
end