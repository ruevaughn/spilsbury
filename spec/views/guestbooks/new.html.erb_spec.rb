require 'rails_helper'

RSpec.describe "guestbooks/new", :type => :view do
  before(:each) do
    assign(:guestbook, Guestbook.new(
      :obituary_id => 1
    ))
  end

  it "renders new guestbook form" do
    render

    assert_select "form[action=?][method=?]", guestbooks_path, "post" do

      assert_select "input#guestbook_obituary_id[name=?]", "guestbook[obituary_id]"
    end
  end
end
