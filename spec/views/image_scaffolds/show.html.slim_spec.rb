require 'rails_helper'

RSpec.describe "image_scaffolds/show", type: :view do
  before(:each) do
    @image_scaffold = assign(:image_scaffold, ImageScaffold.create!(
      :title => "Title",
      :description => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
  end
end
