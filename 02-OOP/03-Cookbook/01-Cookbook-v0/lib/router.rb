class Router
  def initialize(controller)
    @controller = controller
    @running = true
    @display = controller.display
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "
    while @running
      @display.display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else puts "Please press 1, 2, 3 or 4"
    end
  end
end
