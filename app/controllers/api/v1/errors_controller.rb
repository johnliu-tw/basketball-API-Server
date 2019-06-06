class Api::V1::ErrorsController < ApplicationController
	def not_found
		@response['code'] = 404
		@response['msg'] = "page not found"
		render json: @response
	end
	
	def unprocessable_entity
		@response['code'] = 404
		@response['msg'] = "page not found"
		render json: @response
	end
	
	def server_error
		@response['code'] = 502
		@response['msg'] = "server error"	
		render json: @response
	end
end