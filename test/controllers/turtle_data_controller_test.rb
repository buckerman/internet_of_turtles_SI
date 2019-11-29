require 'test_helper'

class TurtleDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turtle_datum = turtle_data(:one)
  end

  test "should get index" do
    get turtle_data_url
    assert_response :success
  end

  test "should get new" do
    get new_turtle_datum_url
    assert_response :success
  end

  test "should create turtle_datum" do
    assert_difference('TurtleDatum.count') do
      post turtle_data_url, params: {turtle_datum: {depth: @turtle_datum.depth, latitude: @turtle_datum.latitude, light: @turtle_datum.light, longitude: @turtle_datum.longitude, temperature: @turtle_datum.temperature, turtle_id: @turtle_datum.turtle_id}}
    end

    assert_redirected_to turtle_datum_url(TurtleDatum.last)
  end

  test "should show turtle_datum" do
    get turtle_datum_url(@turtle_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_turtle_datum_url(@turtle_datum)
    assert_response :success
  end

  test "should update turtle_datum" do
    patch turtle_datum_url(@turtle_datum), params: {turtle_datum: {depth: @turtle_datum.depth, latitude: @turtle_datum.latitude, light: @turtle_datum.light, longitude: @turtle_datum.longitude, temperature: @turtle_datum.temperature, turtle_id: @turtle_datum.turtle_id}}
    assert_redirected_to turtle_datum_url(@turtle_datum)
  end

  test "should destroy turtle_datum" do
    assert_difference('TurtleDatum.count', -1) do
      delete turtle_datum_url(@turtle_datum)
    end

    assert_redirected_to turtle_data_url
  end
end
