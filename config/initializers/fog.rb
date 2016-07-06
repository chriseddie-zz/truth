  # 
  # CarrierWave.configure do |config|
  #   config.fog_credentials = {
  #     provider:               'AWS',
  #     aws_access_key_id:      ENV['AKIAI3TYFGMI6TFRB3MA'],
  #     aws_secret_access_key:  ENV['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'],
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
      :aws_access_key_id      => 'AKIAI3TYFGMI6TFRB3MA',       # required
      :aws_secret_access_key  => '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',       # required
      # :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = 'truthdrums-drums'                     # required
    # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
    # config.fog_public     = false                                   # optional, defaults to true
    # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
