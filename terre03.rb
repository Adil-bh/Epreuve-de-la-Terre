=begin

1* Je récupère la lettre en argument.
2* Je mets la lettre dans la variable lettre_de_depart
3* Je créé un tableau de l'alphabet allant de 0..25 (26 lettres)
4* Parcourir le tableau alphabet et comparer chaque lettre avec la lettre_de_depart 
5* Si lettre_de_départ = lettre_tableau_alphabet on récupère l'index de la lettre en question pour le mettre dans index_depart
6* Créer un nouveau tableau alphabet_tronque allant de index_depart..25
7* Print chaque élément du tableau alphabet_tronque

=end

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
lettre_de_depart = ARGV

for lettre in alphabet #On parcours le tableau alphabet pour comparer la lettre donnée en argument pour récupérer l'index
	if lettre == lettre_de_depart[0] #lettre_de_depart[Ø] car ARGV est un tableau
		index_depart = alphabet.index(lettre)
		alphabet_tronque = alphabet[index_depart..25]
	end
end

alphabet_tronque.each do |i|
	print i
end

