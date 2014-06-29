require 'rails_helper'

RSpec.describe "guestbooks/show", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :obituary_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
