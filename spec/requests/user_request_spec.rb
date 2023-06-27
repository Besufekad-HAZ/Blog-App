require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'user index' do
    before :each do
      get users_path
    end
    it 'should check if status was correct' do
      expect(response).to have_http_status(200)
    end
    it 'should check if correct index template is rendered' do
      expect(response).to render_template(:index)
    end
  end

  context 'user show' do
    before :each do
      @user = User.create(name: 'Kelvin Kaviku',
                          photo: 'https://avatars.githubusercontent.com/u/104892694?v=4',
                          bio: 'In love with Ruby on Rails.',
                          posts_counter: 1)
      get user_path(@user.id)
    end

    # Check if response status is correct.
    it 'should check if status was correct' do
      expect(response).to have_http_status(200)
    end

    # Check if a correct template is rendered.
    it 'should check if correct index template is rendered' do
      expect(response).to render_template(:show)
    end

    # Check if the response body includes correct placeholder text.
    it 'should check if response body includes correct placeholder text' do
      expect(response.body).to include('Bio')
    end
  end
end
