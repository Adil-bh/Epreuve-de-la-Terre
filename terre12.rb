arguments = ARGV
format_12 = arguments[0]
format_24 = "%.2i:%.2i"
meridiem = nil

#Ante meridiem ou Post meridiem 
if format_12.upcase.include?("AM")
	meridiem = "AM"
elsif format_12.upcase.include?("PM")
	meridiem = "PM"
end
	
#Création du tableau [heure : minutes]
tab = format_12.chomp(meridiem).split(':')
heure = tab[0].to_i
minutes = tab[1].to_i

#Gestion de valeurs abérrantes
if heure > 12 || heure < 0
	puts "Erreur"
elsif minutes > 60 || minutes < 0
	puts "Erreur"
else

	if arguments.length != 1 || format_12.to_i < 0 || tab.length != 2
		puts "Erreur"
		else

		if meridiem == "AM"
			#Si on entre 12:00AM = Erreur car minuit = 00:00AM
			if heure == 12
				puts "Erreur"
			else
				puts format_24 % [heure, minutes]
			end

		elsif meridiem == "PM"

			#Formatage de l'heure 11: => 23:
			compteur = 0
			for num in 0..12
				if num == heure 
					break
				elsif 
					compteur = heure + 12
				end
			end
			#Pour éviter d'avoir midi à 24
			if heure != 12 && heure != 0
				heure = compteur
				puts format_24 % [heure, minutes]
			elsif heure == 0	#Dans le cas où on entrerait 00:00PM = Erreur car midi = 12:00PM
				puts "Erreur"
			end

		end
	end
end
