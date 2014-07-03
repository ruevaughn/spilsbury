class ObituaryImageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    if is_male?
      ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_male.jpg"].compact.join('_'))
    else
      ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_female.jpg"].compact.join('_'))
    end
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def is_male?
    model.is_male?
  end

  def is_female?
    model.is_female?
  end
end
