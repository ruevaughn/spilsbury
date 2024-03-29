class Obituary < ActiveRecord::Base
  belongs_to :person
  has_one :guestbook, dependent: :destroy
  mount_uploader :obituary_image, ObituaryImageUploader

  scope :ascending, -> {order("death_date asc")}
  scope :descending, -> {order("death_date desc")}

  paginates_per 8

  def name
    first_name + " " + last_name
  end

  def life_range
    born_date_to_s + " - " +  death_date_to_s
  end

  def born_date_to_s
    born_date.strftime('%b %d %Y')
  end

  def death_date_to_s
    death_date.strftime('%b %d %Y')
  end

  def is_male?
    gender == 'male' ? true : false
  end

  def is_female?
    gender == 'female' ? true : false
  end
end
