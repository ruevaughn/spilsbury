class Obituary < ActiveRecord::Base
  belongs_to :person
  mount_uploader :obituary_image, ObituaryImageUploader

  scope :ascending, -> {order("death_date asc")}
  scope :descending, -> {order("death_date desc")}

  def name
    first_name + " " + last_name
  end

  def life_range
    born_date_to_s + " - " +  death_date_to_s
  end

  def born_date_to_s
    born_date.strftime('%B %d, %Y')
  end

  def death_date_to_s
    death_date.strftime('%B %d, %Y')
  end
end
