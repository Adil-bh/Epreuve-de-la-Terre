nombre1 = ARGV[0].to_i
nombre2 = ARGV[1].to_i

if nombre2 == 0
	print "Erreur."
elsif nombre2 > nombre1
	print "Erreur."
else
	resultat = nombre1/nombre2
	reste = nombre1%nombre2
	puts "resultat : #{resultat}"
	puts "reste : #{reste}"
end