require 'rails_helper'

describe Staff do
  it "is valid with valid params" do
    staff = build_stubbed(:staff)
    expect(staff).to be_valid
  end
end
