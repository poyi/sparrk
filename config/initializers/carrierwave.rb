
require 'carrierwave'

CarrierWave.configure do |config|
  if Rails.env.production?
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],       # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], # required
  }
  
  config.fog_directory = ENV['BUCKET']
  config.fog_public     = true # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

  else
  #for development and testing locally
  config.storage = :file
  config.enable_processing = false
  end

   # Make the tmp dir work on Heroku
   #  config.cache_dir = "#{Rails.root}/tmp/uploads"
end