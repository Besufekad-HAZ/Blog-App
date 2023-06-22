require 'rails_helper'

RSpec.describe "Controllers", type: :request do
  describe "GET /controllers" do
    it "works! (now write some real specs)" do
      get controllers_index_path
      expect(response).to have_http_status(200)
    end
  end
end
