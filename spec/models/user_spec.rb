# Tests Uers
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'Connor', photo: 'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMjk2ODdiNGFkMzE3ODQ1NDFkOTdhYWVhZWYxMDYxNjdhMWVhM2JlOCZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/BG9OrtFcxH9CjNpNcT/giphy.gif', bio: 'Hey there', posts_counter: 0) }

  it 'Name must not be nil' do
    user.name = nil
    expect(user).to_not be_valid
  end
  it 'Post counter number must be numeric' do
    user.posts_counter = ''
    expect(user).to_not be_valid
  end
  it 'Post counter number must be greater than 0' do
    user.posts_counter = -10
    expect(user).to_not be_valid
  end
  describe '#recent_posts' do
    before do
      4.times do |i|
        Post.create(title: "Post #{i + 1}", text: "This is post #{i + 1}",
                    author_id: user.id, comments_counter: 0,
                    likes_counter: 0)
      end
    end

    it 'should return 3 most recent posts' do
      expect(user.recent_three_posts.length).to eql 3
    end

    it 'should return most recent one as first item' do
      expect(user.recent_three_posts[0].title).to eql 'Post 4'
    end
  end
end
