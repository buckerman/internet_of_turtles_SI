require "application_system_test_case"

class CollectedDataTest < ApplicationSystemTestCase
  setup do
    @collected_datum = collected_data(:one)
  end

  test "visiting the index" do
    visit collected_data_url
    assert_selector "h1", text: "Collected Data"
  end

  test "creating a Collected datum" do
    visit collected_data_url
    click_on "New Collected Datum"

    fill_in "Date", with: @collected_datum.date
    fill_in "Deep", with: @collected_datum.deep
    fill_in "Latitude", with: @collected_datum.latitude
    fill_in "Light", with: @collected_datum.light
    fill_in "Longitude", with: @collected_datum.longitude
    fill_in "Temperature", with: @collected_datum.temperature
    fill_in "Turtle", with: @collected_datum.turtle_id
    click_on "Create Collected datum"

    assert_text "Collected datum was successfully created"
    click_on "Back"
  end

  test "updating a Collected datum" do
    visit collected_data_url
    click_on "Edit", match: :first

    fill_in "Date", with: @collected_datum.date
    fill_in "Deep", with: @collected_datum.deep
    fill_in "Latitude", with: @collected_datum.latitude
    fill_in "Light", with: @collected_datum.light
    fill_in "Longitude", with: @collected_datum.longitude
    fill_in "Temperature", with: @collected_datum.temperature
    fill_in "Turtle", with: @collected_datum.turtle_id
    click_on "Update Collected datum"

    assert_text "Collected datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Collected datum" do
    visit collected_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collected datum was successfully destroyed"
  end
end
