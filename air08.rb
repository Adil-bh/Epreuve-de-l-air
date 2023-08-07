#Fonction utilisées
def sorted_fusion(array1, array2)
	output_array = []
	n = array1.length - 1

	for i in 0..n
		if array1[i] > array2[i]
			output_array << array2[i] << array1[i]
		elsif array1[i] < array2[i]
			output_array << array1[i] << array2[i]
		end
	end

	return output_array
end

def split_array(array)
	array1, array2 = [], []
	switch_array = false

	array.each do |value|
		switch_array = true if value == "fusion"
		next if value == "fusion"
		switch_array ? array2 << value : array1 << value
	end

	return array1, array2
end

def check_errors(arguments)
	if !arguments.any? { |element| element.match("fusion")  }
		puts "error"
		exit
	end
end

#Partie 1 : Gestion d'erreur
check_errors(ARGV)

#Partie 2 : Parsing
array1, array2 = split_array(ARGV)
if array1.length != array2.length
	puts "error"
	exit
end

#Partie 3 : Résolution
result = sorted_fusion(array1, array2)

#Partie 4 : Affichage
print result
