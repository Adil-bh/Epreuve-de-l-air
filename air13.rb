require 'colorize'
#Fonction utilisées

#On utilise des variables globales pour calculer le nombre de succès par tentatives
$total_attempts = 0
$total_successes = 0
def my_script_launch(filename, arguments)
	total_attempts = arguments.length
	output = ""
	puts "<<<< #{filename} : Test >>>>".colorize(:black ).colorize( :background => :white)
	for i in 0..arguments.length - 1
		attempt = i + 1 #Uniquement pour afficher dans la console les tentatives à partir de 1
		output = `ruby #{filename} #{arguments[i]}`
		if output.chomp.downcase.include?("error") 
			print"#{filename} (#{attempt}/#{total_attempts}) : failure\n".red
			$total_attempts += 1
		else
			print "#{filename} (#{attempt}/#{total_attempts}) : success\n".green
			$total_attempts += 1
			$total_successes += 1
		end
	end
end

#Résolution et Affichage
my_script_launch("air00.rb", ["'Bonjour les gars'", "'Salut les filles'", "Ciao", "Plusieurs args"])
my_script_launch("air01.rb", ["'Crevette magique dans la mer des étoiles' 'la'", "Test erreur"])
my_script_launch("air02.rb", ["'je' 'teste' 'des' 'trucs' ' '", "Test erreur"])
my_script_launch("air03.rb", ["1 2 3 4 5 4 3 2 1", "Test erreur", "bonjour monsieur bonjour"])
my_script_launch("air04.rb", ["'Hello milady,   bien ou quoi ??'", "Test erreur"])
my_script_launch("air05.rb", ["1 2 3 4 5 '+2'", "10 11 12 20 '-5'", "1 2 3 4 5 2"])
my_script_launch("air06.rb", ["'Michel' 'Albert' 'Thérèse' 'Benoit' 't'", "'Michel' 'Albert' 'Thérèse' 'Benoit' 'a'", "'Michel' 'Albert' 'Thérèse' 'Benoit'"])
my_script_launch("air07.rb", ["1 3 4 2", "10 20 30 40 50 60 70 90 33", "Bonjour"])
my_script_launch("air08.rb", ["10 20 30 fusion 15 25 35", "10 20 30 40 50 60 70 90 33", "Bonjour"])
my_script_launch("air09.rb", ["'Michel' 'Albert' 'Thérèse' 'Benoit'", "10 20 30 40 50 60 70 90 33", "Bonjour"])
my_script_launch("air10.rb", ["'a.txt'", "Bonjour"])
my_script_launch("air11.rb", ["O 5", "Bonjour"])
my_script_launch("air12.rb", ["6 5 4 3 2 1", "Bonjour", "11 22 41 54"])

puts "\nTotal success: (#{$total_successes}/#{$total_attempts})".colorize(:yellow	)