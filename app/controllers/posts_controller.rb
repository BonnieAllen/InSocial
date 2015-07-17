class PostsController < ApplicationController
	def index
	end
	
	def new
		@post = Post.create
	end

	def create
		@post = Post.create(post_params)
		redirect_to_posts_path
	end
	
	private

	def post_params
		params.require(:post).permit(:image, :supertitle)
	end


end
