require 'test_helper'

class DeepDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deep_datum = deep_data(:one)
  end

  test "should get index" do
    get deep_data_url
    assert_response :success
  end

  test "should get new" do
    get new_deep_datum_url
    assert_response :success
  end

  test "should create deep_datum" do
    assert_difference('DeepDatum.count') do
      post deep_data_url, params: { deep_datum: { deep: @deep_datum.deep, latitude: @deep_datum.latitude, light: @deep_datum.light, longitude: @deep_datum.longitude, temperature: @deep_datum.temperature, turtle_id: @deep_datum.turtle_id } }
    end

    assert_redirected_to deep_datum_url(DeepDatum.last)
  end

  test "should show deep_datum" do
    get deep_datum_url(@deep_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_deep_datum_url(@deep_datum)
    assert_response :success
  end

  test "should update deep_datum" do
    patch deep_datum_url(@deep_datum), params: { deep_datum: { deep: @deep_datum.deep, latitude: @deep_datum.latitude, light: @deep_datum.light, longitude: @deep_datum.longitude, temperature: @deep_datum.temperature, turtle_id: @deep_datum.turtle_id } }
    assert_redirected_to deep_datum_url(@deep_datum)
  end

  test "should destroy deep_datum" do
    assert_difference('DeepDatum.count', -1) do
      delete deep_datum_url(@deep_datum)
    end

    assert_redirected_to deep_data_url
  end
end
