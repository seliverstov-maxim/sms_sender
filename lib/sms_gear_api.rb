require 'sms_gear_api/version'
require 'net/http'
require 'digest/md5'

module SmsGearApi
  class Base
    attr_accessor :login, :passw, :url
    def initialize(params = {})
      @login = params[:login]
      @passw = params[:passw]
      @url = URI(params[:url])
    end

    def send_sms(params = {})
      params[:target] = target_to_str params[:target]
      params[:user] = @login
      params[:pass] = md5_pass_hash
      params[:action] = 'post_sms'

      res = Net::HTTP.post_form(@url, params)
      puts params[:target]
      puts res.body
      true
    end

    private

    def md5_pass_hash
      return @pass_hash if @pass_hash
      @pass_hash = Digest::MD5.hexdigest @passw if @passw
    end

    def target_to_str(target)
      target.respond_to?(:join) ? target.join(', ') : target
    end
  end
end
