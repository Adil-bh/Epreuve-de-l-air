#Fonction utilisées
def check_errors(arguments)
	last_index = arguments.length - 1
	if arguments.length < 3 || arguments.to_s.count("0-9") > 0
		return true
	end

	if arguments[last_index].to_s.count("/\w+/") > 0
		return true
	end
end

def concat_method(array_of_strings, separator)
	output_string = ""
	last_index = array_of_strings.length - 1

	array_of_strings.each_with_index do |word, index|
		output_string += word 
		output_string += separator unless index == last_index
	end
	return output_string
end

#Partie 1 : Gestion d'erreur
if check_errors(ARGV)
	puts "error"
	exit
end

#Partie 2 : Parsing
index_of_separator = ARGV.length - 1
separator = ARGV[index_of_separator]

#Partie 3 : Résolution
result = concat_method(ARGV, separator)

#Partie 4 : Affichage
print result