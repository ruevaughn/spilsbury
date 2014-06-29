class Obituary < ActiveRecord::Base
  belongs_to :person
  mount_uploader :obituary_image, ObituaryImageUploader

  def name
    first_name + " " + last_name
  end

  def life_range
    born_date.strftime('%B %d, %Y') + " - " +  death_date.strftime('%B %d, %Y')
  end

end
