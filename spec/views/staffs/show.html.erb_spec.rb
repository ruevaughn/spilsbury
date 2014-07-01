require 'rails_helper'

RSpec.describe "staffs/show", :type => :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      :name => "Name",
      :image => "Image",
      :description => "MyText",
      :job_name => "Job Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Job Name/)
  end
end
