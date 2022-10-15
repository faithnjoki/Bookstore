require "application_system_test_case"

class MybooksTest < ApplicationSystemTestCase
  setup do
    @mybook = mybooks(:one)
  end

  test "visiting the index" do
    visit mybooks_url
    assert_selector "h1", text: "Mybooks"
  end

  test "should create mybook" do
    visit mybooks_url
    click_on "New mybook"

    fill_in "Genre", with: @mybook.genre
    fill_in "Name", with: @mybook.name
    fill_in "Rating", with: @mybook.rating
    click_on "Create Mybook"

    assert_text "Mybook was successfully created"
    click_on "Back"
  end

  test "should update Mybook" do
    visit mybook_url(@mybook)
    click_on "Edit this mybook", match: :first

    fill_in "Genre", with: @mybook.genre
    fill_in "Name", with: @mybook.name
    fill_in "Rating", with: @mybook.rating
    click_on "Update Mybook"

    assert_text "Mybook was successfully updated"
    click_on "Back"
  end

  test "should destroy Mybook" do
    visit mybook_url(@mybook)
    click_on "Destroy this mybook", match: :first

    assert_text "Mybook was successfully destroyed"
  end
end
