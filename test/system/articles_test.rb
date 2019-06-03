require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
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
