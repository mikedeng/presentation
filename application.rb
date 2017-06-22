require_relative 'routing'
Dir[File.dirname(__FILE__) + '/uniqueway/app/controllers/*.rb'].each {|file| require file }

class Application
  def call(env)
    klass, action = Routing.new.get_controller_and_action(env) # 1. routing to controller & action
 	  controller = klass.new(env) 			   					 # 2. initialize controller
 	  text       = controller.send(action) 					 # 3. execute action out of controller
    [200, {'Content-Type' => 'text/html'}, [text]] # 4. repond with action result
  end
end

require 'rack'
Rack::Handler::WEBrick.run Application.new

# segment summary: contruct the controllers & action response