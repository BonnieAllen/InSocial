require 'rails_helper'

RSpec.describe "image_scaffolds/index", type: :view do
  before(:each) do
    assign(:image_scaffolds, [
      ImageScaffold.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      ),
      ImageScaffold.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of image_scaffolds" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
