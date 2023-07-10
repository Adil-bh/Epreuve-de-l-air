#Fonction utilisées
def check_errors(arguments)
	return true if arguments.length != 1
end

def split_method(string_to_cut, string_separator)
	temporary_chars_array = []
	output_array = []

	for i in 0..string_to_cut.length
		if string_to_cut[i] == string_separator || i == string_to_cut.length 	#S'il y a un caractère de séparation on concatène le tableau temporaire et on insère la valeur
			output_array << temporary_chars_array.join						 	#dans output_array. Vider ensuite tableau temporaire
			temporary_chars_array.clear
		else
			temporary_chars_array << string_to_cut[i]   						#Sinon on insère les charactères dans tableau temporaire.
		end
	end

	return output_array
end

#Partie 1 : Gestion d'erreur
if check_errors(ARGV)
	puts "error"
	exit
end
#Partie 2 : Parsing
string_to_cut = ARGV[0]
string_separator = "\s"

#Partie 3-4 : Résolution et Affichage
puts split_method(string_to_cut, string_separator)

