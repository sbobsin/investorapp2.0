require "application_system_test_case"

class CaptialContributionsTest < ApplicationSystemTestCase
  setup do
    @captial_contribution = captial_contributions(:one)
  end

  test "visiting the index" do
    visit captial_contributions_url
    assert_selector "h1", text: "Captial Contributions"
  end

  test "creating a Captial contribution" do
    visit captial_contributions_url
    click_on "New Captial Contribution"

    fill_in "Current capital balance", with: @captial_contribution.current_capital_balance
    fill_in "Original contribution", with: @captial_contribution.original_contribution
    fill_in "User", with: @captial_contribution.user_id
    click_on "Create Captial contribution"

    assert_text "Captial contribution was successfully created"
    click_on "Back"
  end

  test "updating a Captial contribution" do
    visit captial_contributions_url
    click_on "Edit", match: :first

    fill_in "Current capital balance", with: @captial_contribution.current_capital_balance
    fill_in "Original contribution", with: @captial_contribution.original_contribution
    fill_in "User", with: @captial_contribution.user_id
    click_on "Update Captial contribution"

    assert_text "Captial contribution was successfully updated"
    click_on "Back"
  end

  test "destroying a Captial contribution" do
    visit captial_contributions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Captial contribution was successfully destroyed"
  end
end
