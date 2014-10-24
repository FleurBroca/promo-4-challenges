class Display
  def display_all_recipes(recipes)
    puts "Here is the list of all the recipes:"
    recipes.each do |recipe|
      puts "#{recipe.name} : #{recipe.description}"
    end
  end

  def ask_user_for_name
    puts "What is the name of your recipe?"
    gets.chomp
  end

  def ask_user_for_description
    puts "What is the description of your recipe?"
    gets.chomp
  end

  def destroy_recipe
    puts "What recipe do you want to erase?"
    gets.chomp.to_i
  end


  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - Stop and exit the program"
  end
end