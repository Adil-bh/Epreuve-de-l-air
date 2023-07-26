#Fonction utilisées
def pyramid_of_char(letter, number_of_lines)
	number_of_lines = number_of_lines.to_i
	letter_by_line = 1
	
	number_of_lines.times do |i|
		puts " " * (number_of_lines - 1 - i) + letter * letter_by_line
		letter_by_line += 2
	end
end


#Partie 1 : Gestion d'erreur
#Partie 2 : Parsing
letter = ARGV[0]
lines = ARGV[1]


if letter.length != 1 || lines.to_s.length != 1
	puts "error"
	exit
elsif letter.count("0-9") > 0 || lines.count("a-zA-Z") > 0
	puts "error"
	exit	
end

#Partie 3 : Résolution
result = pyramid_of_char(letter, lines)
