require 'rails_helper'

describe Admin do
  it "is valid with valid attributes" do
    admin = create(:admin)
    expect(admin).to be_valid
  end
end
