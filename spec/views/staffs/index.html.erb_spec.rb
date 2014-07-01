require 'rails_helper'

RSpec.describe "staffs/index", :type => :view do
  before(:each) do
    assign(:staffs, [
      Staff.create!(
        :name => "Name",
        :image => "Image",
        :description => "MyText",
        :job_name => "Job Name"
      ),
      Staff.create!(
        :name => "Name",
        :image => "Image",
        :description => "MyText",
        :job_name => "Job Name"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Job Name".to_s, :count => 2
  end
end
