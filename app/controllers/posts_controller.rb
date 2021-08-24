class PostsController < ApplicationController
  def index
    posts = Post.new(post_params)
    case posts.costom && posts.faculty
    when "User" && "理工学部"
      @lists=List.where('title LIKE ?',"%#{posts.body}%")
    else
      p "存在しません"
    end
  end

  private
  def post_params
      params.permit(:faculty,:costom,:body)
  end
end
