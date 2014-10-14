def french_phone_number?(phone_number)
  # TODO: true or false?
  #Verify beginning by 01 or 06 and presence of 10 digits, don't take spaces or dots or - into account

  #"hello guys".gsub(/g..s/, 'le wagon')
  phone_number.gsub(/ |-|/," ")
  phone_number.match(^(01|06|+33)/d{10}/m)

  if phone_number
    puts "True"
  else
    puts "False"
  end
end

p french_phone_number("01-45-55-97-37")
