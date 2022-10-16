require "test_helper"

class MyreadingbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myreadingbook = myreadingbooks(:one)
  end

  test "should get index" do
    get myreadingbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_myreadingbook_url
    assert_response :success
  end

  test "should create myreadingbook" do
    assert_difference("Myreadingbook.count") do
      post myreadingbooks_url, params: { myreadingbook: { author: @myreadingbook.author, genre: @myreadingbook.genre, name: @myreadingbook.name, rating: @myreadingbook.rating } }
    end

    assert_redirected_to myreadingbook_url(Myreadingbook.last)
  end

  test "should show myreadingbook" do
    get myreadingbook_url(@myreadingbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_myreadingbook_url(@myreadingbook)
    assert_response :success
  end

  test "should update myreadingbook" do
    patch myreadingbook_url(@myreadingbook), params: { myreadingbook: { author: @myreadingbook.author, genre: @myreadingbook.genre, name: @myreadingbook.name, rating: @myreadingbook.rating } }
    assert_redirected_to myreadingbook_url(@myreadingbook)
  end

  test "should destroy myreadingbook" do
    assert_difference("Myreadingbook.count", -1) do
      delete myreadingbook_url(@myreadingbook)
    end

    assert_redirected_to myreadingbooks_url
  end
end
