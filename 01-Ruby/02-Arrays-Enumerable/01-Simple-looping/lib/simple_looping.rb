def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  a = min
  sum = a

  while a != max
    a += 1
    sum += a
  end
  sum
end

puts sum_with_while(3, 9)

def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = 0
  for a in min..max
  sum = sum + a
  end
  sum
end

puts sum_with_while(3, 9)


def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

