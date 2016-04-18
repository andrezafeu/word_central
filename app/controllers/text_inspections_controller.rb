class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
	def create
		@text = params[:text_inspection][:user_text]
		render plain: @text
	end
end
