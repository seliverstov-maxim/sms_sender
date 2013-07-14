require 'bundler/setup'
require 'sms_gear_api'
Bundler.require

if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end