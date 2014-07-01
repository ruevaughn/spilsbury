require 'rails_helper'

RSpec.describe "staffs/new", :type => :view do
  before(:each) do
    assign(:staff, Staff.new(
      :name => "MyString",
      :image => "MyString",
      :description => "MyText",
      :job_name => "MyString"
    ))
  end

  it "renders new staff form" do
    render

    assert_select "form[action=?][method=?]", staffs_path, "post" do

      assert_select "input#staff_name[name=?]", "staff[name]"

      assert_select "input#staff_image[name=?]", "staff[image]"

      assert_select "textarea#staff_description[name=?]", "staff[description]"

      assert_select "input#staff_job_name[name=?]", "staff[job_name]"
    end
  end
end
