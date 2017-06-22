class ApplicationController #1. add ApplicationController
	attr_reader :env
	def initialize(env)
		@env = env
	end

	def render(content)
		# 2. render a html document & see the result from browser
		"<html><head></head><body>#{content}</body></html>"
	end
end