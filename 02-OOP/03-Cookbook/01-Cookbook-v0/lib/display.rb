class Display
  def ask_user_for_new_recipe
    puts "New recipe: What's the name of your recipe?"
    name_recipe = gets.chomp
    puts "New recipe: What's the description of your recipe?"
    description_recipe = gets.chomp
    return recipe = Recipe.new(name_recipe, description_recipe)
  end

  def print_recipes(recipes)
    print "Here is the list of recipes :"
    recipes.each do |row|
      puts "row[0] : row[1]"
    end
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