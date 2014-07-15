class Guestbook < ActiveRecord::Base
  belongs_to :obituary
  has_many :guestbook_signatures

  validates :obituary_id, presence: true
end
