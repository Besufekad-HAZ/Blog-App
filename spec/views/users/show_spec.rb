require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  let!(:user) { User.create(name: 'Zed', bio: 'Learning', photo: 'https://avatars.githubusercontent.com/u/46059756?v=4') }
  let!(:post) { Post.create(title: 'Post1', text: 'Js best pratices', author: user) }
  let!(:post2) { Post.create(title: 'Post2', text: 'Ruby best pratices', author: user) }
  let!(:post3) { Post.create(title: 'Post3', text: 'Java best pratices', author: user) }
  let!(:post4) { Post.create(title: 'Post4', text: 'Learning Phyton', author: user) }
  let!(:comment) { Comment.create(author: user, post:, text: 'Hello, this is my first comment.') }
  let!(:likes) { Like.create(author: user, post:) }

  before do
    visit user_path(user.id)
  end
  describe 'contents of user show page' do
    it 'should display the users profile picture' do
      expect(page).to have_css("img[src='#{user.photo}']")
    end
    it 'should display the users name' do
      expect(page).to have_content(user.name)
    end
    it 'should display the number of posts the user has' do
      expect(page).to have_content("Number of posts: #{user.posts.count}")
    end
    it 'should display the users bio' do
      expect(page).to have_content(user.bio)
    end
    it 'should display the users first 3 posts' do
      expect(page).to have_content(post2.title)
      expect(page).to have_content(post3.title)
      expect(page).to have_content(post4.title)
    end
    it 'should have a button to see all posts' do
      expect(page).to have_link('See all posts')
    end
  end
  describe 'Links on user show page' do
    it 'when clicking on users post should go to post show page' do
      click_link post2.title
      expect(current_path).to eq user_post_path(user, post2)
    end
    it 'when clicking on see all posts' do
      click_link 'See all posts'
      expect(current_path).to eq "#{user_posts_path(user)}/"
    end
  end
end
