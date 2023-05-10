=begin
	
1* On récupère l'argument
2* On le met sous la forme d'un tableau avec un index par caractère
3* On crée une variable compteur qui prend en valeur la taille du tableau
4* Et on parcours le tableau à l'envers pour afficher chaque lettre en partant de la fin 
	
=end

chaine_de_caractere = ARGV
chaine_tableau = ARGV[0].chars

compteur = ARGV[0].length

while compteur >=0
	print chaine_tableau[compteur]
	compteur = compteur - 1
end
