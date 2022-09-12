class PostsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create]

  def new
    @post = Post.new
  end
end
