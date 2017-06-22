require_relative '../../../application_controller'

class PortolioController < ApplicationController
	def index
		render "index", local_param1: 'portolio'
	end
end