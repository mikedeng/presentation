class Application
    def call(env)
        ['200', {'Content-Type' => 'text/html'}, ['Hello word']]
    end
end

require 'rack'
Rack::Handler::WEBrick.run Application.new