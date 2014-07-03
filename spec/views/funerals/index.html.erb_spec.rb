require 'rails_helper'

RSpec.describe "funerals/index", :type => :view do
  before(:each) do
    assign(:funerals, [
      Funeral.create!(
        :location => "MyText",
        :visitation => "MyText",
        :interment => "MyText"
      ),
      Funeral.create!(
        :location => "MyText",
        :visitation => "MyText",
        :interment => "MyText"
      )
    ])
  end

  it "renders a list of funerals" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
