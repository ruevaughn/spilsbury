require 'rails_helper'
describe Obituary do
  it "can be created" do
    obituary = create(:obituary)
    expect(obituary.valid?).to be(true)
  end

  describe "#name" do
    it "combines the name" do
      obituary = build_stubbed(:obituary, first_name: 'Foo', last_name: 'Bar')
      expect(obituary.name).to eq "Foo Bar"
    end
  end

  describe ".ascending" do
    it "returns ascending order" do
      person1 = create(:obituary, death_date: Date.today - 1)
      person2 = create(:obituary, death_date: Date.today)

      expect(Obituary.ascending).to eq([person1, person2])
    end
  end

end

