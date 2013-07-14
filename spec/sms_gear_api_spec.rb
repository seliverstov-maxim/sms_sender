require 'spec_helper'

describe SmsGearApi do
  before :all do
    @sms_gear_api = SmsGearApi::Base.new login: '79250_test', passw: '123456'
  end

  it 'should send sms' do
    params = {
      target: '79084774210',
      sender: 'maxim',
      body: 'hello world!'
    }
    @sms_gear_api.send_sms(params).should be_true
  end

  it 'should send bulk sms' do
    params = {
      target: ['79084774210', '79084774210'],
      sender: 'maxim',
      body: 'hello world!'
    }
    @sms_gear_api.send_sms(params).should be_true
  end
end