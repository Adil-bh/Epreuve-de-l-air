#Fonction utilisées
def check_errors(arguments)
	if arguments.any? { |element| element.match(/[a-zA-Z]/) }
		puts "error"
		exit
	end
end

def my_partition(array, pivot)
	left_array, right_array = [], []
	array.each do |element|
		if element < pivot
			left_array << element
		elsif element >= pivot
			right_array << element
		end
	end
	return left_array, right_array
end

def my_quick_sort(array) #Utilisation d'une fonction récursive
	array.map!(&:to_i)
	pivot = array.sampleit 
	return array if array.length <= 1
	left, right = my_partition(array, pivot)
	my_quick_sort(left) + my_quick_sort(right)
end

#Partie 1 : Gestion d'erreur
check_errors(ARGV)

#Partie 3 : Résolution
result = my_quick_sort(ARGV)

#Partie 4 : Affichage
print result
