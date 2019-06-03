require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get articles" do
    get articles_url
    assert_response :success
  end

  # test "visiting articles" do
  #   get articles_url
  #   assert_selector "h1", text: "Hello Rails!"
  # end

end
