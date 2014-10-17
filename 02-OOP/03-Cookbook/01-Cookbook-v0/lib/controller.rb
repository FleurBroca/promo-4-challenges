require_relative "recipe"
require_relative "display"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    @display.print_recipes(@cookbook.recipes)
  end

  def create
    recipe = @display.ask_user_for_new_recipe
    @cookbook.add_recipe(recipe)
  end

  def destroy(name)
  end
end