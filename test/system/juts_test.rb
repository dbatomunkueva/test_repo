require "application_system_test_case"

class JutsTest < ApplicationSystemTestCase
  setup do
    @jut = juts(:one)
  end

  test "visiting the index" do
    visit juts_url
    assert_selector "h1", text: "Juts"
  end

  test "should create jut" do
    visit juts_url
    click_on "New jut"

    fill_in "Content", with: @jut.content
    fill_in "User", with: @jut.user_id
    click_on "Create Jut"

    assert_text "Jut was successfully created"
    click_on "Back"
  end

  test "should update Jut" do
    visit jut_url(@jut)
    click_on "Edit this jut", match: :first

    fill_in "Content", with: @jut.content
    fill_in "User", with: @jut.user_id
    click_on "Update Jut"

    assert_text "Jut was successfully updated"
    click_on "Back"
  end

  test "should destroy Jut" do
    visit jut_url(@jut)
    click_on "Destroy this jut", match: :first

    assert_text "Jut was successfully destroyed"
  end
end
