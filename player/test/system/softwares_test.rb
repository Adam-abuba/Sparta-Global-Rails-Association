require "application_system_test_case"

class SoftwaresTest < ApplicationSystemTestCase
  setup do
    @software = softwares(:one)
  end

  test "visiting the index" do
    visit softwares_url
    assert_selector "h1", text: "Softwares"
  end

  test "creating a Software" do
    visit softwares_url
    click_on "New Software"

    fill_in "Cost", with: @software.cost
    fill_in "Developer", with: @software.developer_id
    fill_in "Functional", with: @software.functional
    fill_in "Name", with: @software.name
    fill_in "User", with: @software.user_id
    click_on "Create Software"

    assert_text "Software was successfully created"
    click_on "Back"
  end

  test "updating a Software" do
    visit softwares_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @software.cost
    fill_in "Developer", with: @software.developer_id
    fill_in "Functional", with: @software.functional
    fill_in "Name", with: @software.name
    fill_in "User", with: @software.user_id
    click_on "Update Software"

    assert_text "Software was successfully updated"
    click_on "Back"
  end

  test "destroying a Software" do
    visit softwares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Software was successfully destroyed"
  end
end
