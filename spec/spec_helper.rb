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
    browser_name = ENV['BROWSER'] || :chrome
    case browser_name.to_sym
    when :chrome
      switches = ['--disable-notifications']
      @browser = Watir::Browser.new(:chrome, switches: switches)
    when :firefox
      profile = Selenium::WebDriver::Firefox::Profile.new
      profile['dom.webnotifications.enabled'] = false
      @browser = Watir::Browser.new(:firefox, profile: profile)
    else
      raise "Unsupported browser #{browser_name}"
    end
    @login = ENV['FACEBOOK_LOGIN']
    @password = ENV['FACEBOOK_PASSWORD']
    unless @login && @password
      raise "Please provide FACEBOOK_LOGIN and FACEBOOK_PASSWORD env vars"
    end
  end

  config.after(:all) do
    @browser.close if @browser
  end
end
