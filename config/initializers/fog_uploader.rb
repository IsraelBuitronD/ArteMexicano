CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJTKBYNVA3T3IJVRQ',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'artemexicano'
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.asset_host     = 'http://artemexicano.s3-website-us-east-1.amazonaws.com'
end
