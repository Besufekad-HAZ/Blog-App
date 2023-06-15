# Tests Comments
require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validations' do
    let(:user) { User.create(name: 'Yidne', photo: 'Image will be displayed here', bio: 'Hello Coders', posts_counter: 0) }
    let(:post) { Post.create(title: 'First Post', text: 'This is my first post', author_id: user.id, comments_counter: 0, likes_counter: 0) }

     it 'Must have a title' do
      post.title = nil
      expect(post).to_not be_valid
    end

    it 'Invalid if more than 250 characters' do
      post = Post.create(
        title: 'sdghjashgdjahsgjdahsgjdahgsjdsgjashdgjshgjashgdjashgdjashgddfdjhkjdhkjdhfkjdhksjdhfyujashgdjashgdjashgdjashgvcbvncmnvcmvcvbnmeurioeuroeirueoirueoriueordjashdgasjhdgjashdgjashdgagellodfdhjdhkfjoeimamsdhstypidfndfhjskjdsomthing', text: 'This is my first post', author_id: user.id
      )
      expect(post).to_not be_valid
    end

    it 'likes_counter should be greater than or equal to 0' do
      post.likes_counter = -1
      expect(post).to_not be_valid
    end

    it 'likes_counter should be an integer' do
      post.likes_counter = 0.5
      expect(post).to_not be_valid
    end

    it 'comments_counter should be greater than or equal to 0' do
      post.comments_counter = -5
      expect(post).to_not be_valid
    end

    it 'comments_counter should be an integer' do
      post.comments_counter = 0.7
      expect(post).to_not be_valid
    end
    describe 'Post counter' do
      it 'should belong to the correct user' do
        expect(post.author).to eql user
      end

      it 'should update counter of related user' do
        post.update_posts_count
        expect(post.author.posts_counter).to eql 2
      end
    end
  end
end
