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

    fill_in "Birthday", with: @turtle.birthday
    fill_in "Description", with: @turtle.description
    fill_in "Fixation date", with: @turtle.fixation_date
    fill_in "Integer", with: @turtle.integer
    fill_in "Name", with: @turtle.name
    fill_in "Researcher", with: @turtle.researcher_id
    fill_in "Sex", with: @turtle.sex
    fill_in "Species", with: @turtle.species
    fill_in "Turtle", with: @turtle.turtle_id
    click_on "Create Turtle"

    assert_text "Turtle was successfully created"
    click_on "Back"
  end

  test "updating a Turtle" do
    visit turtles_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @turtle.birthday
    fill_in "Description", with: @turtle.description
    fill_in "Fixation date", with: @turtle.fixation_date
    fill_in "Integer", with: @turtle.integer
    fill_in "Name", with: @turtle.name
    fill_in "Researcher", with: @turtle.researcher_id
    fill_in "Sex", with: @turtle.sex
    fill_in "Species", with: @turtle.species
    fill_in "Turtle", with: @turtle.turtle_id
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
