#Fonction utilisées
def who_hasnt_the_letter(array_of_strings, letter_string)
	output_array = []

	array_of_strings.each do |word|		#["Michel", "Albert", "Thérèse", "Benoit"]
		word = word.chars				#["M","i","c","h","e","l"]
		if !word.any? { |letter| letter.match(letter_string) || letter.match(letter_string.upcase)}
			output_array << word.join
		end			
	end
	return output_array
end

def check_errors(arguments)
	if arguments.length < 2
		puts "error"
		exit
	end

	if ARGV.last.length != 1
		puts "error"
		exit
	end
end
#Partie 1 : Gestion d'erreur
check_errors(ARGV)

#Partie 2 : Parsing
string_to_match = ARGV.last
ARGV.pop

#Partie 3 : Résolution
result = who_hasnt_the_letter(ARGV, string_to_match)

#Partie 4 : Affichage
print result