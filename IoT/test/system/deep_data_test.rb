require "application_system_test_case"

class DeepDataTest < ApplicationSystemTestCase
  setup do
    @deep_datum = deep_data(:one)
  end

  test "visiting the index" do
    visit deep_data_url
    assert_selector "h1", text: "Deep Data"
  end

  test "creating a Deep datum" do
    visit deep_data_url
    click_on "New Deep Datum"

    fill_in "Deep", with: @deep_datum.deep
    fill_in "Latitude", with: @deep_datum.latitude
    fill_in "Light", with: @deep_datum.light
    fill_in "Longitude", with: @deep_datum.longitude
    fill_in "Temperature", with: @deep_datum.temperature
    fill_in "Turtle", with: @deep_datum.turtle_id
    click_on "Create Deep datum"

    assert_text "Deep datum was successfully created"
    click_on "Back"
  end

  test "updating a Deep datum" do
    visit deep_data_url
    click_on "Edit", match: :first

    fill_in "Deep", with: @deep_datum.deep
    fill_in "Latitude", with: @deep_datum.latitude
    fill_in "Light", with: @deep_datum.light
    fill_in "Longitude", with: @deep_datum.longitude
    fill_in "Temperature", with: @deep_datum.temperature
    fill_in "Turtle", with: @deep_datum.turtle_id
    click_on "Update Deep datum"

    assert_text "Deep datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Deep datum" do
    visit deep_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deep datum was successfully destroyed"
  end
end
