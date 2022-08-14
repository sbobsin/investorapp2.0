require "application_system_test_case"

class CapitalAccountsTest < ApplicationSystemTestCase
  setup do
    @capital_account = capital_accounts(:one)
  end

  test "visiting the index" do
    visit capital_accounts_url
    assert_selector "h1", text: "Capital Accounts"
  end

  test "creating a Capital account" do
    visit capital_accounts_url
    click_on "New Capital Account"

    fill_in "Current balance", with: @capital_account.current_balance
    fill_in "Initial balance", with: @capital_account.initial_balance
    click_on "Create Capital account"

    assert_text "Capital account was successfully created"
    click_on "Back"
  end

  test "updating a Capital account" do
    visit capital_accounts_url
    click_on "Edit", match: :first

    fill_in "Current balance", with: @capital_account.current_balance
    fill_in "Initial balance", with: @capital_account.initial_balance
    click_on "Update Capital account"

    assert_text "Capital account was successfully updated"
    click_on "Back"
  end

  test "destroying a Capital account" do
    visit capital_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capital account was successfully destroyed"
  end
end
