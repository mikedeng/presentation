require_relative 'routing'
Dir[File.dirname(__FILE__) + '/uniqueway/app/controllers/*.rb'].each {|file| require file }

class Application
  def call(env)
  	return [200, {'Content-Type' => 'text/html'}, ['empty']] if env['PATH_INFO'].include?('favicon')

    klass, action = Routing.new.get_controller_and_action(env)
 	  controller = klass.new(env)
 	  text       = controller.send(action)
    [200, {'Content-Type' => 'text/html'}, [text]]
  end
end

require 'rack'
Rack::Handler::WEBrick.run Application.new

# segment summary: import erubis & and find the views path