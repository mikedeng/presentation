require_relative '../../../application_controller'

class PortolioController < ApplicationController
	def index
		render "Portolio#index"
	end
end