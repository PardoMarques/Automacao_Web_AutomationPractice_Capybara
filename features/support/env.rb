require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'rspec'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com/'
    config.default_max_wait_time = 15
end

Capybara.page.driver.browser.manage.window.maximize