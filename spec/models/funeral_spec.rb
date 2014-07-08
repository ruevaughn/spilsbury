require 'rails_helper'

describe Funeral do
  it "is valid with valid attributes" do
    funeral = create(:funeral)
    expect(funeral).to be_valid
  end
end
