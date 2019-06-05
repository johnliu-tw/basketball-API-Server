class Api::V1::ErrorsController < ApplicationController
	def not_found
		data = {code: 0, msg: 'page not found'}
		render json: data
	end
	
	def unprocessable_entity
		data = {code: 0, msg: 'page not found'}
		render json: data
	end
	
	def server_error
		data = {code: 502, msg: 'server error'}
		render json: data
	end
end