require_relative 'routing'
Dir[File.dirname(__FILE__) + '/uniqueway/app/controllers/*.rb'].each {|file| require file }

class Application
  def call(env)
    klass, action = Routing.new.get_controller_and_action(env)
 	  controller = klass.new(env)
 	  text       = controller.send(action)
    [200, {'Content-Type' => 'text/html'}, [text]]
  end
end

require 'rack'
Rack::Handler::WEBrick.run Application.new

# segment summary: know render