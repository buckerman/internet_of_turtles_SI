require 'test_helper'

class CollectedDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collected_datum = collected_data(:one)
  end

  test "should get index" do
    get collected_data_url
    assert_response :success
  end

  test "should get new" do
    get new_collected_datum_url
    assert_response :success
  end

  test "should create collected_datum" do
    assert_difference('CollectedDatum.count') do
      post collected_data_url, params: { collected_datum: { date: @collected_datum.date, deep: @collected_datum.deep, latitude: @collected_datum.latitude, light: @collected_datum.light, longitude: @collected_datum.longitude, temperature: @collected_datum.temperature, turtle_id: @collected_datum.turtle_id } }
    end

    assert_redirected_to collected_datum_url(CollectedDatum.last)
  end

  test "should show collected_datum" do
    get collected_datum_url(@collected_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_collected_datum_url(@collected_datum)
    assert_response :success
  end

  test "should update collected_datum" do
    patch collected_datum_url(@collected_datum), params: { collected_datum: { date: @collected_datum.date, deep: @collected_datum.deep, latitude: @collected_datum.latitude, light: @collected_datum.light, longitude: @collected_datum.longitude, temperature: @collected_datum.temperature, turtle_id: @collected_datum.turtle_id } }
    assert_redirected_to collected_datum_url(@collected_datum)
  end

  test "should destroy collected_datum" do
    assert_difference('CollectedDatum.count', -1) do
      delete collected_datum_url(@collected_datum)
    end

    assert_redirected_to collected_data_url
  end
end
