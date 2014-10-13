def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |num, i|
    if i.odd?
      sum = num + sum
    end
  end
  sum
end
sum_odd_indexed([1, 2, 3, 5, 6, 7, 8, 9, 10])

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  list_even_numbers = array.select do |number|
    number.even?
  end
  return list_even_numbers
end
even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  # [1, 2, 3, 4, 5].reject { |num| num.even? }
  array.reject do | word |
    word.length > max_length
  end
end
puts short_words(["fleur", "pomme", "arabesque", "dix"], 4)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find do | number |
    number < limit
  end
end
puts first_under([11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 4)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do | word |
    "#{word}!"
  end
end
puts add_bang(["fleur", "pomme", "arabesque", "dix"])

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce do |product, number|
    product * number
  end
end
puts product([11, 12, 13, 14, 15, 16, 17, 18, 19, 20])

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  # (1..10).each_slice(3) { |a| p a }
  # (1..10).sort { |a, b| b <=> a }
  sorted_array = []
  array.each_slice(2) do | slice |
    a = slice.sort
    sorted_array << a
  end
  sorted_array
end
puts sorted_pairs(["fleur", "pomme", "arabesque", "dix", "carotte", "pain"])
