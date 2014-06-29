require 'rails_helper'

RSpec.describe "guestbook_signatures/edit", :type => :view do
  before(:each) do
    @guestbook_signature = assign(:guestbook_signature, GuestbookSignature.create!(
      :guestbook => nil,
      :name => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit guestbook_signature form" do
    render

    assert_select "form[action=?][method=?]", guestbook_signature_path(@guestbook_signature), "post" do

      assert_select "input#guestbook_signature_guestbook_id[name=?]", "guestbook_signature[guestbook_id]"

      assert_select "input#guestbook_signature_name[name=?]", "guestbook_signature[name]"

      assert_select "textarea#guestbook_signature_message[name=?]", "guestbook_signature[message]"
    end
  end
end
