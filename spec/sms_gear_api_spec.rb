require 'spec_helper'

describe SmsGearApi do
  before :all do
    @sms_gear_api = SmsGearApi::Base.new login: '79250_test', passw: '123456', url: 'http://gates.smschimp.ru/http/gate.cgi'
  end

  it 'should send sms' do
    params = {
      target: '79041855645',
      sender: 'maxim',
      message: 'hello world!'
    }
    @sms_gear_api.send_sms(params).should be_true
  end

  it 'should send bulk sms' do
    params = {
      target: ['79041855645', '79084774210'],
      sender: 'maxim',
      message: 'hello world!'
    }
    @sms_gear_api.send_sms(params).should be_true
  end
end