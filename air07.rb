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

def check_errors(arguments, number_to_add)
	(1...arguments.length).each do |i|
    	if arguments[i] < arguments[i - 1] || arguments[i].match(/[a-zA-Z]/)
    		puts "error"
    		exit
    	end
  	end

  	if !number_to_add.match(/[0-9]/)
  		puts "error"
  		exit
  	end
end

#Partie 1-2 : Parsing et Gestion d'erreur
number_to_add = ARGV.last
ARGV.pop
check_errors(ARGV, number_to_add)

#Partie 3 : Résolution
result = sorted_insert(ARGV, number_to_add)

#Partie 4 : Affichage
print result