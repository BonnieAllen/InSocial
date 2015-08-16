require 'rails_helper'

RSpec.describe "ImageScaffolds", type: :request do
  describe "GET /image_scaffolds" do
    it "works! (now write some real specs)" do
      get image_scaffolds_path
      expect(response).to have_http_status(200)
    end
  end
end
