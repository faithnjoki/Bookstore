require "application_system_test_case"

class MyreadingbooksTest < ApplicationSystemTestCase
  setup do
    @myreadingbook = myreadingbooks(:one)
  end

  test "visiting the index" do
    visit myreadingbooks_url
    assert_selector "h1", text: "Myreadingbooks"
  end

  test "should create myreadingbook" do
    visit myreadingbooks_url
    click_on "New myreadingbook"

    fill_in "Author", with: @myreadingbook.author
    fill_in "Genre", with: @myreadingbook.genre
    fill_in "Name", with: @myreadingbook.name
    fill_in "Rating", with: @myreadingbook.rating
    click_on "Create Myreadingbook"

    assert_text "Myreadingbook was successfully created"
    click_on "Back"
  end

  test "should update Myreadingbook" do
    visit myreadingbook_url(@myreadingbook)
    click_on "Edit this myreadingbook", match: :first

    fill_in "Author", with: @myreadingbook.author
    fill_in "Genre", with: @myreadingbook.genre
    fill_in "Name", with: @myreadingbook.name
    fill_in "Rating", with: @myreadingbook.rating
    click_on "Update Myreadingbook"

    assert_text "Myreadingbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Myreadingbook" do
    visit myreadingbook_url(@myreadingbook)
    click_on "Destroy this myreadingbook", match: :first

    assert_text "Myreadingbook was successfully destroyed"
  end
end
