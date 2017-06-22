require_relative '../../../application_controller'

class HomeController < ApplicationController
	def index
		render "index", local_param1: 'home'
	end
end