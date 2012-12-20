require 'rubygems'
require 'Fog'

storage = Fog::Storage.new({
 
  :local_root => '~/test',
  :provider   => 'Local'


#     :provider           => 'Rackspace',
#      :rackspace_username => 'gurutapas',
#      :rackspace_api_key  => '801b0a5b394baf14ea9a7d89e7a0c403'
    })
#    storage.fog_directory = 'authorprofile'
#    storage.fog_host = 'http://d7441c98a8deb5280c23-9bf20b80f87f111a6c1307e06e8f2a90.r76.cf2.rackcdn.com'

directory = storage.directories.create(
  :key => 'data'
)

file = directory.files.create(
  :body => 'Hello World!',
  :key  => 'hello_world.txt'
)