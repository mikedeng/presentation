class PortolioController
	attr_reader :env

	def initialize(env)
		@env = env
	end

	def index
		'Portolio#index'
	end
end