class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image,PostImageUploader
  has_many :comments

  def self.ordered
    # fetch only the general posts
    @posts = Post.where(year_group: :general)
    # order the posts fetched in descending order
    @posts.order(created_at: :desc)
  end

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end

end
