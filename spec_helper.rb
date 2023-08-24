require 'rspec'
require 'webdrivers'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.around(:example) do |example|
    Webdrivers::Chromedriver.required_version = ENV['CHROME_DRIVER_VERSION'] || '114.0.5735.90'
    @driver = Selenium::WebDriver.for :chrome

    begin
      example.run
    ensure
      @driver.quit
    end
  end
end
