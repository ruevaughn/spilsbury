class ObituaryImageUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
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
