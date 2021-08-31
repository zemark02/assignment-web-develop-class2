class Ex2Controller < ApplicationController
	def show
		@a = params[:a]
		@b = params[:b]
	end
end
