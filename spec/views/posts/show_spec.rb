# tests go here

require 'rails_helper'

RSpec.describe 'Post Show page', type: :feature do
  let!(:user) { User.create(name: 'Kelvin', bio: 'Full stack developer', photo: 'https://avatars.githubusercontent.com/u/104892694?v=4') }
  let!(:post) { Post.create(title: 'Post1', text: 'Content for post 1', author: user) }
  let!(:comment) { Comment.create(author: user, post:, text: 'Hello, this is my first comment.') }
  let!(:likes) { Like.create(author: user, post:) }

  before do
    visit user_posts_path(user, post)
  end

  describe 'content' do
    it "should display the post's title" do
      expect(page).to have_content(post.title)
    end
    it 'should display who wrote the post' do
      expect(page).to have_content(user.name)
    end
    it 'should display the number of comments' do
      expect(page).to have_content('Comments: 1')
    end
    it 'should display the number of likes' do
      expect(page).to have_content('Likes:1')
    end
    it "should display the post's body" do
      expect(page).to have_content(post.text)
    end
    it "should display the commentor's name" do
      expect(page).to have_content(comment.author.name)
    end
    it "should display the comment's body" do
      expect(page).to have_content(comment.text)
    end
  end
end
