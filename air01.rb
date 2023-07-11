#Fonction utilisées
def check_arguments_error(arguments)
	return true if arguments.length != 2
end

def split_method(string_to_cut, separator_string)
	actual_word = []
	string_to_cut_array = []
	first_part_array = []
	last_part_array = []

	#On transforme le String en Array => string_to_cut_array
	for i in 0..string_to_cut.length
		if string_to_cut[i] == "\s" || i == string_to_cut.length
			string_to_cut_array << actual_word.join
			actual_word.clear
		else
			actual_word << string_to_cut[i]
		end
	end

	#On remplace le séparateur par un retour à la ligne
	string_to_cut_array.map! { |mot| mot == "la" ? "\n" : mot }

	return string_to_cut_array.join(" ")
end

#Partie 1 : Gestion d'erreur
if check_arguments_error(ARGV)
	puts "error"
	exit
end

#Partie 2 : Parsing
string_to_cut = ARGV[0]
separator_string = ARGV[1]

#Partie 3 : Résolution
result = split_method(string_to_cut, separator_string)

#Partie 4 : Affichage
print result