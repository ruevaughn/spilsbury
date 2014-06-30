class Guestbook < ActiveRecord::Base
  belongs_to :obituary
  has_many :guestbook_signatures
end
