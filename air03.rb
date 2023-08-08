#Fonction utilisées
def check_errors_arguments(arguments)
	return true if arguments.length <= 2
end

def find_intruder(array)
	n = array.length
	intruders = []

	n.times do |i|
		#On compte le nombre d'occurences dans le tableau passé en argument ; Si == 1, on insère la valeur dans le tableau intruders
		if array.count(array[i]) == 1
			intruders << array[i]
		end
	end
	
	#Cas où il y a que des paires
	if intruders.length == 0
		puts "error : only pairs"
		exit
	end
	return intruders
end

#Partie 1 : Gestion d'erreur
if check_errors_arguments(ARGV)
	puts "error"
	exit
end

#Partie 2 : Résolution
result = find_intruder(ARGV)

#Partie 3 : Affichage
puts result