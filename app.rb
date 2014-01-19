require 'sinatra'

enable :sessions
use Rack::Flash

$LOAD_PATH.unshift(File.expand_path('.'))

['models', 'routes'].each do |directory_to_preload|
  Dir["#{directory_to_preload}/*.rb"].each do |file_to_load|
    require file_to_load
  end
end

