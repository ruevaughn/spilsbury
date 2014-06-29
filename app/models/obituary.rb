class Obituary < ActiveRecord::Base
  mount_uploader :obituary_image, ObituaryImageUploader

  def name
    first_name + " " + last_name
  end
end
