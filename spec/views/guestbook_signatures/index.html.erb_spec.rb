require 'rails_helper'

RSpec.describe "guestbook_signatures/index", :type => :view do
  before(:each) do
    assign(:guestbook_signatures, [
      GuestbookSignature.create!(
        :guestbook => nil,
        :name => "Name",
        :message => "MyText"
      ),
      GuestbookSignature.create!(
        :guestbook => nil,
        :name => "Name",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of guestbook_signatures" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
