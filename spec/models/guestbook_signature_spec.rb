require 'rails_helper'

describe GuestbookSignature do
  it "is valid with valid attributes" do
    signature = create(:guestbook_signature)
    expect(signature).to be_valid
  end
end
