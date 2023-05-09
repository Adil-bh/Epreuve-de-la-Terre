=begin

1* On mets la 1ère valeur du tableau d'arguments dans la variable entier
2* Etant donné que ARGV est un tableau de Strings on vérifie si les caractères sont des lettres ou des chiffres
3* Si chiffres on vérifie pair/impair avec modulo 2 sinon print "Tu ne me la mettras pas à l’envers."

=end

entier = ARGV[0]

if entier.count("a-zA-Z") <= 0
	if entier.to_i % 2 == 0  
		print "pair"
	elsif entier.to_i % 2 != 0
		print "impair"
	end
else
	print "Tu ne me la mettras pas à l’envers."
end