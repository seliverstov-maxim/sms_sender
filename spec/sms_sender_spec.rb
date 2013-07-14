require 'spec_helper'

describe SmsSender do
  before :all do
    @sms_sender = SmsSender::Base.new login: '79250_test', passw: '123456'
  end

  it 'should send sms' do
    @sms_sender.send('79084774210', 'maxim', 'hello world?').should be_true
  end
end