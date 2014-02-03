# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Todo::Application.initialize!

config.gem 'javan-whenever', :lib => false, :source => 'http://gems.github.com'

