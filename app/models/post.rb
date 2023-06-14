class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  after_save :update_posts_count

  def update_posts_count
    author.increment!(:posts_counter)
  end

  def recent_five_comments
    comments.order(created_at: :desc).limit(5)
  end
end
