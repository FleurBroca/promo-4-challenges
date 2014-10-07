# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  a_string.strip
end
# puts get_rid_of_surrounding_whitespaces(" hey yo ")

def belongs_to?(a_string, a_word)
  a_string.include?(a_word)
end
# puts belongs_to?("hey jude", "jude")

def replace(initial_string, old_letter, new_letter)
  initial_string.gsub("a", "o")
end
# puts replace("casanova", "a", "o")

def exactly_divide(an_integer, a_divider)
  an_integer.to_f / a_divider
end
# puts 13.to_f / 4

def divisible_by_two?(an_integer)
  an_integer % 2 == 0
end
# puts 6 % 2 == 0

def random_subset(an_array, sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
end

def randomize(an_array)
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
end

def ascending_order(an_array)
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
end