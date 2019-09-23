require "application_system_test_case"

class TurtlesTest < ApplicationSystemTestCase
  setup do
    @turtle = turtles(:one)
  end

  test "visiting the index" do
    visit turtles_url
    assert_selector "h1", text: "Turtles"
  end

  test "creating a Turtle" do
    visit turtles_url
    click_on "New Turtle"

    fill_in "Description", with: @turtle.description
    fill_in "Estimated birthday", with: @turtle.estimated_birthday
    fill_in "Module installation date", with: @turtle.module_installation_date
    fill_in "Name", with: @turtle.name
    fill_in "Sex", with: @turtle.sex
    fill_in "Specie", with: @turtle.specie
    fill_in "User", with: @turtle.user_id
    click_on "Create Turtle"

    assert_text "Turtle was successfully created"
    click_on "Back"
  end

  test "updating a Turtle" do
    visit turtles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @turtle.description
    fill_in "Estimated birthday", with: @turtle.estimated_birthday
    fill_in "Module installation date", with: @turtle.module_installation_date
    fill_in "Name", with: @turtle.name
    fill_in "Sex", with: @turtle.sex
    fill_in "Specie", with: @turtle.specie
    fill_in "User", with: @turtle.user_id
    click_on "Update Turtle"

    assert_text "Turtle was successfully updated"
    click_on "Back"
  end

  test "destroying a Turtle" do
    visit turtles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turtle was successfully destroyed"
  end
end
