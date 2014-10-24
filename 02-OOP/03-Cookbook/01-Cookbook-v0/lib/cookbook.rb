require 'csv'
require_relative "recipe"

class Cookbook
  attr_reader :recipes

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_recipes_from_csv
  end

  # Récupérer toutes les recettes du fichier csv
  def load_recipes_from_csv
    CSV.foreach(@csv_file) do |row|
      name = row[0]
      description = row[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update_csv
  end

  def remove_recipe(id_recipe)
    @recipes.delete_at(id_recipe)
    update_csv
  end

  def update_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

end


# Testing our cookbook

# filepath = File.join(File.dirname(__FILE__), 'recipes.csv')

# my_cookbook = Cookbook.new(filepath)

# my_cookbook.recipes.each do |recipe|
#   puts "nom: #{recipe.name}"
#   puts "desc: #{recipe.description}"
# end

# chocolate_cake = Recipe.new("Gateau au chocolat", "du beurre et du chocolat")

# my_cookbook.add_recipe(chocolate_cake)

# puts my_cookbook.recipes.last.name


