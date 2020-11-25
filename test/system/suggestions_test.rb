require "application_system_test_case"

class SuggestionsTest < ApplicationSystemTestCase
  setup do
    @suggestion = suggestions(:one)
  end

  test "visiting the index" do
    visit suggestions_url
    assert_selector "h1", text: "Suggestions"
  end

  test "creating a Suggestion" do
    visit suggestions_url
    click_on "New Suggestion"

    check "Active status" if @suggestion.active_status
    check "Del status" if @suggestion.del_status
    fill_in "Suggestion", with: @suggestion.suggestion
    fill_in "Title", with: @suggestion.title
    click_on "Create Suggestion"

    assert_text "Suggestion was successfully created"
    click_on "Back"
  end

  test "updating a Suggestion" do
    visit suggestions_url
    click_on "Edit", match: :first

    check "Active status" if @suggestion.active_status
    check "Del status" if @suggestion.del_status
    fill_in "Suggestion", with: @suggestion.suggestion
    fill_in "Title", with: @suggestion.title
    click_on "Update Suggestion"

    assert_text "Suggestion was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggestion" do
    visit suggestions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggestion was successfully destroyed"
  end
end
