require 'rails_helper'

RSpec.describe "funerals/show", :type => :view do
  before(:each) do
    @funeral = assign(:funeral, Funeral.create!(
      :location => "MyText",
      :visitation => "MyText",
      :interment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
