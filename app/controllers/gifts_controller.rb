class GiftsController < ApplicationController
	def index
		@gift = Gift.first
	end

	def new
		@gift = Gift.new
	end

	def create
	  @gift = Gift.create( gift_params )
	  if @gift.save
	  	render :index
  	end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def gift_params
	  params.require(:gift).permit(:name, :source_image)
	end
end
