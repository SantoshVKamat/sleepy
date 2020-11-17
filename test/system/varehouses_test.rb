require "application_system_test_case"

class VarehousesTest < ApplicationSystemTestCase
  setup do
    @varehouse = varehouses(:one)
  end

  test "visiting the index" do
    visit varehouses_url
    assert_selector "h1", text: "Varehouses"
  end

  test "creating a Varehouse" do
    visit varehouses_url
    click_on "New Varehouse"

    click_on "Create Varehouse"

    assert_text "Varehouse was successfully created"
    click_on "Back"
  end

  test "updating a Varehouse" do
    visit varehouses_url
    click_on "Edit", match: :first

    click_on "Update Varehouse"

    assert_text "Varehouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Varehouse" do
    visit varehouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Varehouse was successfully destroyed"
  end
end
