class HomeController < ApplicationController
  def page
    @general_posts = Post.ordered
  end
end
