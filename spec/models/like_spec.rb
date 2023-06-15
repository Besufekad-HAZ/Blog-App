# Tests Comments
require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Validations' do
    user = User.create(name: 'Yidne', photo: 'Image will be displayed here', bio: 'Hello Coders', posts_counter: 0)
    post = Post.create(title: 'First Post', text: 'This is my first post', author_id: user.id, comments_counter: 0,
                       likes_counter: 0)

    subject { described_class.create(post:, author: user) }

    it 'must contain user id' do
      subject.author_id = nil
      expect(subject).to_not be_valid
    end

    it 'must contain post id' do
      subject.post_id = nil
      expect(subject).to_not be_valid
    end

    it 'increments the likes counter of the associated post' do
      expect(subject.post.likes_counter).to eq(post.likes_counter)
    end
  end
end
