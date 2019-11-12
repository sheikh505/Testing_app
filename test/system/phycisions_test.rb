require "application_system_test_case"

class PhycisionsTest < ApplicationSystemTestCase
  setup do
    @phycision = phycisions(:one)
  end

  test "visiting the index" do
    visit phycisions_url
    assert_selector "h1", text: "Phycisions"
  end

  test "creating a Phycision" do
    visit phycisions_url
    click_on "New Phycision"

    fill_in "Name", with: @phycision.name
    click_on "Create Phycision"

    assert_text "Phycision was successfully created"
    click_on "Back"
  end

  test "updating a Phycision" do
    visit phycisions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @phycision.name
    click_on "Update Phycision"

    assert_text "Phycision was successfully updated"
    click_on "Back"
  end

  test "destroying a Phycision" do
    visit phycisions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phycision was successfully destroyed"
  end
end
