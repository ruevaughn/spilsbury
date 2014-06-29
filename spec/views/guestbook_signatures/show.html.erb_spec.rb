require 'rails_helper'

RSpec.describe "guestbook_signatures/show", :type => :view do
  before(:each) do
    @guestbook_signature = assign(:guestbook_signature, GuestbookSignature.create!(
      :guestbook => nil,
      :name => "Name",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
