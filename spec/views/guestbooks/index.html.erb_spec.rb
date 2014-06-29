require 'rails_helper'

RSpec.describe "guestbooks/index", :type => :view do
  before(:each) do
    assign(:guestbooks, [
      Guestbook.create!(
        :obituary_id => 1
      ),
      Guestbook.create!(
        :obituary_id => 1
      )
    ])
  end

  it "renders a list of guestbooks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
