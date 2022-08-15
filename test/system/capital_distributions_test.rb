require "application_system_test_case"

class CapitalDistributionsTest < ApplicationSystemTestCase
  setup do
    @capital_distribution = capital_distributions(:one)
  end

  test "visiting the index" do
    visit capital_distributions_url
    assert_selector "h1", text: "Capital Distributions"
  end

  test "creating a Capital distribution" do
    visit capital_distributions_url
    click_on "New Capital Distribution"

    fill_in "Capital account", with: @capital_distribution.capital_account_id
    fill_in "Return of capital", with: @capital_distribution.return_of_capital
    click_on "Create Capital distribution"

    assert_text "Capital distribution was successfully created"
    click_on "Back"
  end

  test "updating a Capital distribution" do
    visit capital_distributions_url
    click_on "Edit", match: :first

    fill_in "Capital account", with: @capital_distribution.capital_account_id
    fill_in "Return of capital", with: @capital_distribution.return_of_capital
    click_on "Update Capital distribution"

    assert_text "Capital distribution was successfully updated"
    click_on "Back"
  end

  test "destroying a Capital distribution" do
    visit capital_distributions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capital distribution was successfully destroyed"
  end
end
