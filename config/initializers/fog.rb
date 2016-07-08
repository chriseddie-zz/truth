  #
  # CarrierWave.configure do |config|
  #   config.fog_credentials = {
  #     provider:               'AWS',
  #     aws_access_key_id:      ENV[''],
  #     aws_secret_access_key:  ENV[''],
  #   }
  #
  #   # For testing, upload files to local `tmp` folder.
  #   if Rails.env.test? || Rails.env.cucumber?
  #     config.storage           = :file
  #     config.enable_processing = false
  #     config.root              = "#{Rails.root}/tmp"
  #   else
  #     config.storage = :fog
  #   end
  #
  #   config.cache_dir        = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on Heroku
  #   config.fog_directory    = ENV['truthdrums-drums']
  # end
  #

  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => '',       # required
      :aws_secret_access_key  => '',       # required
      :region                 => 'us-west-2'  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = 'truthdrums-drums'                     # required
    config.cache_dir        = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on Heroku
    # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
    # config.fog_public     = false                                   # optional, defaults to true
    # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
