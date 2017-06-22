require_relative '../../../application_controller'

class HomeController < ApplicationController
	def index
		render "Home#index"
	end
end