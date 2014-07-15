class Funeral < ActiveRecord::Base
  validates :service_begins, presence: true
end
