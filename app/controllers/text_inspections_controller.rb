class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@minutes_reading = @word_count/275
		@conclusion = "The estimated time of reading is #{@minutes_reading} minutes."
		@frequency = Hash.new(0)
		@scanned = @text.downcase.scan(/\b[a-z]{1,30}\b/).to_a {|word| @frequency[word] = @frequency[word] + 1}
		@sorted = @scanned.sort_by {|key, value| value }.reverse
		@most_frequent_words = @sorted[0..9].join(", ")
		render "results"
	end
end
