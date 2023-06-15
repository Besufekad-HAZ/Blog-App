# Tests Comments
require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validations' do
    user = User.create(name: 'Yidne', photo: 'Image will be displayed here', bio: 'Hello Coders', posts_counter: 0)
    post = Post.create(title: 'First Post', text: 'This is my first post', author_id: user.id, comments_counter: 0,
                       likes_counter: 0)
    subject { described_class.create(text: 'This is my first comment', post:, author: user) }

    it 'is valid without a text' do
      subject.text = nil
      expect(subject).to be_valid
    end

    it 'posts comments count should increase' do
      expect(subject.post.comments_counter).to eq(post.comments_counter)
    end
  end
end
