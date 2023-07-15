#Fonction utilisées
def check_errors(arguments)
	return true if arguments.length != 1
end

def remove_duplicate_char(array)
	n = array.length
	output_array = []

	for i in 0..n
		#Si le caractère du tableau en entrée est différent de la dernière valeur du tableau en sortie : on ne l'intègre pas
		if array[i] != output_array.last
			output_array << array[i]
		end
	end
	return output_array.join
end

#Partie 1 : Gestion d'erreur
if check_errors(ARGV)
	puts "error"
	exit
end
#Partie 2 : Parsing
string_to_chars_array = ARGV[0].chars

#Partie 3 : Résolution
result = remove_duplicate_char(string_to_chars_array)

#Partie 4 : Affichage
print result


