require "csv"
require_relative "recipe"


class Cookbook
  attr_reader :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    @recipes = []
    read_recipes
  end
    # Lire le CSV
  def read_recipes
    CSV.foreach(@csv_file) do |row|
      @recipes << [row[0], row[1]]
    end
  end
    # Ajouter des recettes à @recipes

  def add_recipe(recipe)
    CSV.open(@csv_file, 'r+', @csv_options) do |csv|
      @recipes << recipe
      csv << [recipe.name, recipe.description]
    end
  end

  def remove_recipe
  end
end