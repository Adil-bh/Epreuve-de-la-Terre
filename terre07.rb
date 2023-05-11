=begin
	
1* On récupère la chaîne de caractère en argument
2* On établi les condition d'erreur : 
	- S'il y a plus d'un argument : Erreur
	- Si l'argument est NULL : Erreur
	- Si l'argument contient des chiffres : Erreur
3* Si pas d'erreur : On crée un tableau contenant les caractères de l'argument
4* On compte chaque caractère du tableau 
5* On print la valeur du compteur

Gros bug du terminal car !" interroge l'historique des commandes

=end

chaine = ARGV

if chaine.length > 1 || chaine.length == 0 || chaine.to_s.count("0-9") > 0
	print "Erreur."
else
	compteur = 0
	tableau_chaine = chaine[0].chars  	# Hello world! ====> ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d", "!"]
	tableau_chaine.each do |index|   	#Pour chaque index on vérifie s'il y a une lettre
		if index != nil					#Si index contient une lettre on incrémente le compteur
			compteur = compteur + 1
		else
			break
		end
	end
	puts compteur
end