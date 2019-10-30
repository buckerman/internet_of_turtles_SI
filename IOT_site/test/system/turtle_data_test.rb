require "application_system_test_case"

class TurtleDataTest < ApplicationSystemTestCase
  setup do
    @turtle_datum = turtle_data(:one)
  end

  test "visiting the index" do
    visit turtle_data_url
    assert_selector "h1", text: "Turtle Data"
  end

  test "creating a Turtle datum" do
    visit turtle_data_url
    click_on "New Turtle Datum"

    fill_in "Depth", with: @turtle_datum.depth
    fill_in "Latitude", with: @turtle_datum.latitude
    fill_in "Light", with: @turtle_datum.light
    fill_in "Longitude", with: @turtle_datum.longitude
    fill_in "Temperature", with: @turtle_datum.temperature
    fill_in "Turtle", with: @turtle_datum.turtle_id
    click_on "Create Turtle datum"

    assert_text "Turtle datum was successfully created"
    click_on "Back"
  end

  test "updating a Turtle datum" do
    visit turtle_data_url
    click_on "Edit", match: :first

    fill_in "Depth", with: @turtle_datum.depth
    fill_in "Latitude", with: @turtle_datum.latitude
    fill_in "Light", with: @turtle_datum.light
    fill_in "Longitude", with: @turtle_datum.longitude
    fill_in "Temperature", with: @turtle_datum.temperature
    fill_in "Turtle", with: @turtle_datum.turtle_id
    click_on "Update Turtle datum"

    assert_text "Turtle datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Turtle datum" do
    visit turtle_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turtle datum was successfully destroyed"
  end
end
