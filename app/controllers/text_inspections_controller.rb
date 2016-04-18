class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@minutes_reading = @word_count/275
		@conclusion = "The estimated time of reading is #{@minutes_reading} minutes."
		render "results"
	end
end
