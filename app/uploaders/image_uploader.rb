class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  # storage :file
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [50, 50]
  end
  
  version :medium do
    process :resize_to_fill => [65, 65]
  end

  version :large do
    process :resize_to_fill => [200, 300]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
