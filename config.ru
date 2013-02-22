$stdout.sync = true

require './web'
run Sinatra::Application
run web.rb
