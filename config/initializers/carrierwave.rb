Excon.defaults[:write_timeout] = 10000
Excon.defaults = Excon.defaults.merge(:write_timeout => 10.minutes.to_i)
print "carrierwave.rb"

CarrierWave.configure do |config|

    config.root      = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJZ7IPSARCJKICDYQ',
      :aws_secret_access_key  => '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',
      :persistent             => false,

#      :connect_timeout=>60
      :region             => 'us-east-1'

    }

    config.fog_directory  = 'authorprofile'
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
#    config.fog_host     = 'https://authorprofile.s3.amazonaws.com'

#    config.fog_host = 'https://03a889996870a3c83311-9bf20b80f87f111a6c1307e06e8f2a90.ssl.cf2.rackcdn.com'
#    config.asset_host = 'https://03a889996870a3c83311-9bf20b80f87f111a6c1307e06e8f2a90.ssl.cf2.rackcdn.com'

end
