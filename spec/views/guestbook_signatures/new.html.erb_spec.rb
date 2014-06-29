require 'rails_helper'

RSpec.describe "guestbook_signatures/new", :type => :view do
  before(:each) do
    assign(:guestbook_signature, GuestbookSignature.new(
      :guestbook => nil,
      :name => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new guestbook_signature form" do
    render

    assert_select "form[action=?][method=?]", guestbook_signatures_path, "post" do

      assert_select "input#guestbook_signature_guestbook_id[name=?]", "guestbook_signature[guestbook_id]"

      assert_select "input#guestbook_signature_name[name=?]", "guestbook_signature[name]"

      assert_select "textarea#guestbook_signature_message[name=?]", "guestbook_signature[message]"
    end
  end
end
