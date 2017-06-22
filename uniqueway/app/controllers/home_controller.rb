# require_relative 'application_controller'

class HomeController
	attr_reader :env

	def initialize(env)
		@env = env
	end

	def index
		'home#index'
	end
end