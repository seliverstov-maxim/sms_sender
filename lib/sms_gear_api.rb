require 'sms_gear_api/version'
require 'net/http'
require 'digest/md5'

module SmsGearApi
  class Base
    attr_accessor :login, :passw
    def initialize(params = {})
      @login = params[:login]
      @passw = params[:passw]
    end

    private

    def pass_hash
      return @pass_hash if @pass_hash
      @pass_hash = Digest::MD5.hexdigest @pass
    end
  end
end
