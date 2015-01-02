CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV'AKIAIJOMHWKMQYO5NLEQ',                        # required
    :aws_secret_access_key  => ENV'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',                        # required
    :region                 => 'eu-west-1',
  }
  config.fog_directory  = ENV'leefeit-2'                          # required

end