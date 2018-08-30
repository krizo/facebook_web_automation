require 'rspec'
require 'pry'
require 'require_all'
require 'page-object'
require 'rspec/wait'
require 'webdrivers'

require_all 'pages/'
require_all 'tasks/'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.color = true
  config.tty = true
  config.formatter = :documentation

  config.before(:all) do
    browser = ENV['BROWSER'] || :chrome
    switches = [ '--disable-notifications' ]
    @browser = Watir::Browser.new(browser.to_sym, switches: switches)
    @login = ENV['FACEBOOK_LOGIN']
    @password = ENV['FACEBOOK_PASSWORD']
    unless @login && @password
      raise "Please provide FACEBOOK_LOGIN and FACEBOOK_PASSWORD env vars"
    end
  end

  config.after(:all) do
    @browser.close
  end
end
