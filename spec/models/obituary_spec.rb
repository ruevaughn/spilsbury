require 'rails_helper'
describe Obituary do
  it "can be created" do
    obituary = create(:obituary)
    expect(obituary.valid?).to be(true)
  end
end

