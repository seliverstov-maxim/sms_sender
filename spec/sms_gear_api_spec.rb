require 'spec_helper'

describe SmsGearApi do
  before :all do
    @sms_gear_api = SmsGearApi::Base.new login: '79250_test', passw: '123456'
  end

  it 'should send sms' do
    @sms_gear_api.send_sms('79084774210', 'maxim', 'hello world?').should be_true
  end
end