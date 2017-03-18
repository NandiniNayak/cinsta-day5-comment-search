class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image,PostImageUploader

  def self.ordered
    # fetch only the general posts  
    @posts = Post.where(year_group: :general)
    # order the posts fetched in descending order
    @posts.order(created_at: :desc)
  end

end
