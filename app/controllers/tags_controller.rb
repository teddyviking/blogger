class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end
	def show
		@tag = Tag.find(params[:id])		
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "'#{@tag.name}' has been destroyed correctly"
	end
end