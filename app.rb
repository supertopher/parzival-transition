require 'sinatra'

$LOAD_PATH.unshift(File.expand_path('.'))

['routes', 'initializers'].each do |directory_to_preload|
  Dir["#{directory_to_preload}/*.rb"].each do |file_to_load|
    require file_to_load
  end
end

