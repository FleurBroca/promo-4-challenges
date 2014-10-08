require_relative "wagon_sort"

# demander au user d'ajouter des noms d'étudiants
# créer une liste incluant ces noms
students_list = []
print "Type a student name: "
students_name = gets.chomp

while students_name != ""
  students_list << students_name
print "Type another student name (or press enter to finish): "
students_name = gets.chomp
end

sorted_list = wagon_sort(students_list)
# créer une liste qui inclut tous les éléments sauf le dernier
sorted_list_minus_last = sorted_list[0...-1]
sorted_list_only_last = sorted_list[-1]

puts "Congratulations! Your Wagon has #{students_list.size} students: #{sorted_list_minus_last.join(", ")} and #{sorted_list_only_last}."


# [1, 2, 4, 5, 6].reverse.drop(1).reverse




# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
