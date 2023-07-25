#Fonction utilisées
def file_reading_method(filename)
	if File.exists?(filename)
		file = File.open(filename)
		file_data = file.read
		file.close
	else
		puts "error : File doesn't exists"
		exit
	end
	return file_data
end

def check_errors(arguments)
	if arguments.length != 1
		puts "error : Only filename needed"
		exit
	end	
end

#Partie 1 : Gestion d'erreur
check_errors(ARGV)

#Partie 2 : Parsing
file_to_open = ARGV[0]

#Partie 3 : Résolution
file_content = file_reading_method(file_to_open)
#Partie 4 : Affichage
print file_content