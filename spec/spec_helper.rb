require 'bundler/setup'
require 'sms_sender'
Bundler.require

if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end