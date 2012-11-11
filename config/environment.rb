# set environment: http://www.sitepoint.com/forums/showthread.php?583781-Rails-Switching-to-PRODUCTION
ENV['RAILS_ENV'] ||= 'production'

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Turtletodo::Application.initialize!
