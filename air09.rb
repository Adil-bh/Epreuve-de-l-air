#Fonction utilisées
def my_rotation(array)
    output_array = []
    output_array = array
    output_array.push(array.first) #[Michel, Albert, Therese, Benoit, Michel]
    output_array.delete_at(0)      #[Albert, Therese, Benoit, Michel] 
    return output_array
end

def check_errors(arguments)
    if arguments.length <= 1
        puts "error"
        exit
    end
end

#Partie 1 : Gestion d'erreur
check_errors(ARGV)
#Partie 2 : Parsing

#Partie 3 : Résolution
result = my_rotation(ARGV)
#Partie 4 : Affichage
print result