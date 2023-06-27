require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'post index action' do
    before :each do
      @user = User.create(name: 'Kelvin Kaviku',
                          photo: 'https://avatars.githubusercontent.com/u/104892694?v=4',
                          bio: 'In love with Ruby on Rails.',
                          posts_counter: 1)
      get "/users/#{@user.id}/posts"
    end

    it 'should check if status was correct' do
      expect(response).to have_http_status(200)
    end

    it 'should check if correct index template is rendered' do
      expect(response).to render_template(:index)
    end
  end

  describe 'post show action' do
    before :each do
      @user = User.create(
        name: 'Kelvin Kaviku',
        photo: 'https://avatars.githubusercontent.com/u/104892694?v=4',
        bio: 'In love with Ruby on Rails.',
        posts_counter: 1
      )
      @post = Post.create(
        author: @user,
        title: 'Hello',
        text: 'First Post',
        user_id: @user.id,
        author_id: @user.id,
        comments_counter: 0,
        likes_counter: 0
      )
      get "/users/#{@user.id}/posts/#{@post.id}"
    end
  end
end
