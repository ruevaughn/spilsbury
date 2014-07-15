class Staff < ActiveRecord::Base
  validates :name, presence: true
end
