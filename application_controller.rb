require 'erubis'

class ApplicationController #1. add ApplicationController
	attr_reader :env
	def initialize(env)
		@env = env
	end

	def render(view_name, locals = {})
		view_path = File.dirname(__FILE__) + '/uniqueway/app/views/'
		filename = File.join view_path, controller_name, "#{view_name}.html.erb"
	  template = File.read filename
	  eruby = Erubis::Eruby.new(template)
	  eruby.result locals
	end

	def controller_name
	  klass = self.class
	  klass = klass.to_s.gsub /Controller$/, ""
	  klass.downcase
	end
end