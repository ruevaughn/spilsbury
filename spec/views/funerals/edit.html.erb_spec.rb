require 'rails_helper'

RSpec.describe "funerals/edit", :type => :view do
  before(:each) do
    @funeral = assign(:funeral, Funeral.create!(
      :location => "MyText",
      :visitation => "MyText",
      :interment => "MyText"
    ))
  end

  it "renders the edit funeral form" do
    render

    assert_select "form[action=?][method=?]", funeral_path(@funeral), "post" do

      assert_select "textarea#funeral_location[name=?]", "funeral[location]"

      assert_select "textarea#funeral_visitation[name=?]", "funeral[visitation]"

      assert_select "textarea#funeral_interment[name=?]", "funeral[interment]"
    end
  end
end
