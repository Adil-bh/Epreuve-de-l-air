#Fonction utilisées
def sorted_insert(array, new_element)
	n = array.length
	output_array = []

	for i in 0..n - 1 
		output_array << array[i]
		if new_element > output_array.last && new_element < array[i+1]
			output_array << new_element
		end
	end
	return output_array
end

def check_errors(arguments)
	(1...arguments.length).each do |i|
    	if arguments[i] < arguments[i - 1]
    		puts "error"
    		exit
    	end
  	end
end

#Partie 1 : Gestion d'erreur
#Partie 2 : Parsing
number_to_add = ARGV.last
ARGV.pop
check_errors(ARGV)
#Partie 3 : Résolution
result = sorted_insert(ARGV, number_to_add)

#Partie 4 : Affichage
print result