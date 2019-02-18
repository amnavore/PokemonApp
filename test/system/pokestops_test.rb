require "application_system_test_case"

class PokestopsTest < ApplicationSystemTestCase
  setup do
    @pokestop = pokestops(:one)
  end

  test "visiting the index" do
    visit pokestops_url
    assert_selector "h1", text: "Pokestops"
  end

  test "creating a Pokestop" do
    visit pokestops_url
    click_on "New Pokestop"

    fill_in "Location", with: @pokestop.location
    fill_in "Name", with: @pokestop.name
    click_on "Create Pokestop"

    assert_text "Pokestop was successfully created"
    click_on "Back"
  end

  test "updating a Pokestop" do
    visit pokestops_url
    click_on "Edit", match: :first

    fill_in "Location", with: @pokestop.location
    fill_in "Name", with: @pokestop.name
    click_on "Update Pokestop"

    assert_text "Pokestop was successfully updated"
    click_on "Back"
  end

  test "destroying a Pokestop" do
    visit pokestops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pokestop was successfully destroyed"
  end
end
