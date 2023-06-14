require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get blog' do
    get pages_blog_url
    assert_response :success
  end
end
