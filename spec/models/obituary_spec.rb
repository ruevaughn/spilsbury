require 'rails_helper'
describe :obituary do
  it "is cool" do
    obituary = Obituary.new
    expect(obituary).to be_a(Obituary)
  end
end

