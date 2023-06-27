require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  let!(:user) { User.create(name: 'Zed', bio: 'Master Coder', photo: 'https://avatars.githubusercontent.com/u/46059756?v=4') }
  let!(:post) { Post.create(title: 'Post one', text: 'Content for post one', author: user) }

  before do
    visit users_path
  end

  describe 'contents of user index page' do
    it 'should display username of each user' do
      expect(page).to have_content(user.name)
    end
    it 'should display profile picture of each user' do
      expect(page).to have_css("img[src='#{user.photo}']")
    end
    it 'should display number of posts each user has' do
      expect(page).to have_content("Number of posts: #{user.posts.count}")
    end
  end
  describe 'Links on user index page' do
    it 'When clicking on user should go to user show page' do
      click_link(user.name)
      expect(page).to have_current_path(user_path(user))
    end
  end
end
