CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJDEL332DURZBM6EQ',       # required
    :aws_secret_access_key  => 'bTqEimNmbKfZvQyU4l1PXHUbBzG',       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'sparrk'                     # required
  # config.fog_host       = 'nil'            # optional, defaults to nil
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {}  # optional, defaults to {}
end