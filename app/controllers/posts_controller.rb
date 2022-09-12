class PostsController < ApplicationController
  # before_action :user_signed_in?, only: [:new, :create]

  def new
    @post = Post.new
  end

	def create
		@post = @user.create_post(post_params)

		if @post.save
			redirect_to :index
		else
			render :new, status: :unprocessable_entity
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
