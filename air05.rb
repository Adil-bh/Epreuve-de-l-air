#Fonction utilisées
def substract_or_add_to_array(array, operator_sign, operator_number)
	#On convertit le tableau en entrée et le nombre pour l'opération en Integer
	array.map!(&:to_i)
	operator_number = operator_number.to_i
	n = array.length

	if operator_sign == "+"
		for i in 0..n-1
			array[i] = array[i] + operator_number
		end
	elsif operator_sign == "-"
		for i in 0..n-1
			array[i] = array[i] - operator_number
		end
	end

	return array
end

#Partie 1 : Gestion d'erreur
if ARGV.length < 2
	puts "error"
	exit
end

if !ARGV.last.include?("+") && !ARGV.last.include?("-")
	puts "error"
	exit
end

if ARGV.any? { |element| element.match(/[a-zA-Z]/) }
	puts "error"
	exit
end

#Partie 2 : Parsing
operator = ARGV.last
operator_sign = operator[0]
operator_number = operator[1]
#On retire la dernière valeur du tableau avant d'effecter les additions/soustractions
ARGV.pop

#Partie 3 : Résolution
result = substract_or_add_to_array(ARGV, operator_sign, operator_number)

#Partie 4 : Affichage
print result