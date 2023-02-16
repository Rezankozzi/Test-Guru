require "application_system_test_case"

class TestpassagesTest < ApplicationSystemTestCase
  setup do
    @testpassage = testpassages(:one)
  end

  test "visiting the index" do
    visit testpassages_url
    assert_selector "h1", text: "Testpassages"
  end

  test "creating a TestPassage" do
    visit testpassages_url
    click_on "New TestPassage"

    click_on "Create TestPassage"

    assert_text "TestPassage was successfully created"
    click_on "Back"
  end

  test "updating a TestPassage" do
    visit testpassages_url
    click_on "Edit", match: :first

    click_on "Update TestPassage"

    assert_text "TestPassage was successfully updated"
    click_on "Back"
  end

  test "destroying a TestPassage" do
    visit testpassages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "TestPassage was successfully destroyed"
  end
end
