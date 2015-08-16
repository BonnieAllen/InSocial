require 'rails_helper'

RSpec.describe "image_scaffolds/new", type: :view do
  before(:each) do
    assign(:image_scaffold, ImageScaffold.new(
      :title => "MyString",
      :description => "MyText",
      :image => "MyString"
    ))
  end

  it "renders new image_scaffold form" do
    render

    assert_select "form[action=?][method=?]", image_scaffolds_path, "post" do

      assert_select "input#image_scaffold_title[name=?]", "image_scaffold[title]"

      assert_select "textarea#image_scaffold_description[name=?]", "image_scaffold[description]"

      assert_select "input#image_scaffold_image[name=?]", "image_scaffold[image]"
    end
  end
end
