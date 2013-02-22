$stdout.sync = true

require './wsdl_ruby'
run Sinatra::Application
run wsdl_ruby.rb
