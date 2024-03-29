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

  describe "#born_date_to_s" do
    it "Returns the birth date as a formatted string" do
      obituary = build_stubbed(:obituary, born_date: Date.today - 40.years)
      expect(obituary.born_date_to_s).to eq (Date.today - 40.years).strftime('%b %d %Y')
    end
  end

  describe "#death_date_to_s" do
    it "Returns the birth date as a formatted string" do
      obituary = build_stubbed(:obituary, death_date: Date.today)
      expect(obituary.death_date_to_s).to eq Date.today.strftime('%b %d %Y')
    end
  end

  describe "#life_range" do
    it "returns the life range" do
      obituary = build_stubbed(:obituary, born_date: Date.today - 40.years, death_date: Date.today)
      expect(obituary.life_range).to eq (Date.today - 40.years).strftime('%b %d %Y') + " - " + Date.today.strftime('%b %d %Y')
    end
  end

  describe ".ascending" do
    it "returns ascending order" do
      person1 = create(:obituary, death_date: Date.today - 1)
      person2 = create(:obituary, death_date: Date.today)

      expect(Obituary.ascending).to eq([person1, person2])
    end
  end

  describe ".is_male?" do
    it "returns true if male, false if not" do
      obituary = build_stubbed(:obituary, gender: 'male')
      expect(obituary.is_male?).to be(true)
    end
  end

  describe ".is_female?" do
    it "returns true if female, false if not" do
      obituary = build_stubbed(:obituary, gender: 'female')
      expect(obituary.is_female?).to be(true)
    end
  end

end

