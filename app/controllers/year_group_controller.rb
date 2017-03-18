class YearGroupController < ApplicationController
  def page
    @year_group_posts = Post.where(year_group: params[:year_group])
  end
end
