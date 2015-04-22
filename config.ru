# This file is used by Rack-based servers to start the application.

#require ::File.expand_path('../config/environment',  __FILE__)
#run Rails.application
# -----^original ---

# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require './blog/run' # Require the run.rb file that we created earlier which has the Rack setup for the blog

map '/' do # By default we want everything to hit our Rails application
  run Contango::Application
end

map '/blog' do # Anything at blog/ and beyond will then hit the blog
  run Blog
end
