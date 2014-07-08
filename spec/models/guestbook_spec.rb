require 'rails_helper'

describe Guestbook do
  it "is valid with valid attributes" do
    guestbook = build_stubbed(:guestbook)
    expect(guestbook).to be_valid
  end
end
