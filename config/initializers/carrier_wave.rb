CarrierWave.configure do |config|
  if ["production", "staging"].include?(Rails.env)
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => 'us-west-2'
    }
    config.fog_directory  = ENV['S3_BUCKET_NAME']
    config.fog_public     = false
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  end
end
