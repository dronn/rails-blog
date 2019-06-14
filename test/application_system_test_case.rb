require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
      :browser => :remote,
      :desired_capabilities => :chrome,
      :url => "https://selenium-grid.lib.utexas.edu/wd/hub"
    )
  end

  Capybara.javascript_driver = :selenium
end
