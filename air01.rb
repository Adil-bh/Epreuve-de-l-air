#Fonction utilisées
def check_arguments_error(arguments)
	return true if arguments.length != 2
end

def split_method(string_to_cut, separator_string)
	actual_word = []
	array_of_words = []

	#On transforme le string_to_cut en Array => array_of_words
	for i in 0..string_to_cut.length
		if string_to_cut[i] == "\s" || i == string_to_cut.length
			array_of_words << actual_word.join
			actual_word.clear
		else
			actual_word << string_to_cut[i]
		end
	end

	#On remplace le séparateur par un retour à la ligne
	array_of_words.map! { |mot| mot == "la" ? "\n" : mot }

	#Remise du tableau sous forme de string
	array_of_words = array_of_words.join(" ")

	return array_of_words
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