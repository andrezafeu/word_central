class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
	def create
		render plain: params[:text_inspection][:user_text]
	end
end
