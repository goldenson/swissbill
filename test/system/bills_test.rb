require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "should create bill" do
    visit bills_url
    click_on "New bill"

    fill_in "Address", with: @bill.address
    fill_in "City", with: @bill.city
    fill_in "Email", with: @bill.email
    fill_in "Iban", with: @bill.iban
    fill_in "Name", with: @bill.name
    fill_in "Npa", with: @bill.npa
    fill_in "Phone", with: @bill.phone
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "should update Bill" do
    visit bill_url(@bill)
    click_on "Edit this bill", match: :first

    fill_in "Address", with: @bill.address
    fill_in "City", with: @bill.city
    fill_in "Email", with: @bill.email
    fill_in "Iban", with: @bill.iban
    fill_in "Name", with: @bill.name
    fill_in "Npa", with: @bill.npa
    fill_in "Phone", with: @bill.phone
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "should destroy Bill" do
    visit bill_url(@bill)
    click_on "Destroy this bill", match: :first

    assert_text "Bill was successfully destroyed"
  end
end
