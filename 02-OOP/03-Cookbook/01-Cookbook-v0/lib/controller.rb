class Controller
  attr_reader :cookbook, :display

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    recipes = @cookbook.recipes
    @display.display_all_recipes(recipes)
  end

  def create
    name = @display.ask_user_for_name
    description = @display.ask_user_for_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    id_recipe = @display.destroy_recipe
    @cookbook.remove_recipe(id_recipe)
  end
end