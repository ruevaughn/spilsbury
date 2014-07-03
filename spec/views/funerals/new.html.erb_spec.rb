require 'rails_helper'

RSpec.describe "funerals/new", :type => :view do
  before(:each) do
    assign(:funeral, Funeral.new(
      :location => "MyText",
      :visitation => "MyText",
      :interment => "MyText"
    ))
  end

  it "renders new funeral form" do
    render

    assert_select "form[action=?][method=?]", funerals_path, "post" do

      assert_select "textarea#funeral_location[name=?]", "funeral[location]"

      assert_select "textarea#funeral_visitation[name=?]", "funeral[visitation]"

      assert_select "textarea#funeral_interment[name=?]", "funeral[interment]"
    end
  end
end
