require 'rails_helper'

RSpec.describe "guestbooks/edit", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :obituary_id => 1
    ))
  end

  it "renders the edit guestbook form" do
    render

    assert_select "form[action=?][method=?]", guestbook_path(@guestbook), "post" do

      assert_select "input#guestbook_obituary_id[name=?]", "guestbook[obituary_id]"
    end
  end
end
