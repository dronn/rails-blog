require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  def setup
    @driver = Selenium::WebDriver.for :remote, url: "https://selenium-grid.lib.utexas.edu/wd/hub", desired_capabilities: :firefox
  end

  def teardown
    @driver.quit
  end

  test "visit google" do
    @driver.navigate.to "http://google.com"
    element = @driver.find_element(name: 'q')
    element.send_keys "Hello WebDriver!"
    element.submit

    assert true
  end

  test "visiting the index" do
    visit articles_url

    assert_selector "h1", text: "Hello Rails!"
  end

  test "create an article" do
    visit articles_url

    click_on "New Article"

    fill_in "Title", with: "Creating an Article"
    fill_in "Text", with: "Created this article successfully!"

    click_on "Create Article"

    assert_text "Creating an Article"
  end
end
