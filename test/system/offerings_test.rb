require "application_system_test_case"

class OfferingsTest < ApplicationSystemTestCase
  setup do
    @offering = offerings(:one)
  end

  test "visiting the index" do
    visit offerings_url
    assert_selector "h1", text: "Offerings"
  end

  test "creating a Offering" do
    visit offerings_url
    click_on "New Offering"

    fill_in "Semester", with: @offering.semester
    fill_in "Year", with: @offering.year
    click_on "Create Offering"

    assert_text "Offering was successfully created"
    click_on "Back"
  end

  test "updating a Offering" do
    visit offerings_url
    click_on "Edit", match: :first

    fill_in "Semester", with: @offering.semester
    fill_in "Year", with: @offering.year
    click_on "Update Offering"

    assert_text "Offering was successfully updated"
    click_on "Back"
  end

  test "destroying a Offering" do
    visit offerings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offering was successfully destroyed"
  end
end
