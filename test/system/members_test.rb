require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "should create member" do
    visit members_url
    click_on "New member"

    fill_in "Cell phone", with: @member.cell_phone
    fill_in "Company address", with: @member.company_address
    fill_in "Company area", with: @member.company_area
    fill_in "Company cell phone", with: @member.company_cell_phone
    fill_in "Company email", with: @member.company_email
    fill_in "Company logo", with: @member.company_logo
    fill_in "Company name", with: @member.company_name
    fill_in "Company nif", with: @member.company_nif
    fill_in "Email", with: @member.email
    fill_in "Name", with: @member.name
    fill_in "Pack", with: @member.pack_id
    check "Status" if @member.status
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "should update Member" do
    visit member_url(@member)
    click_on "Edit this member", match: :first

    fill_in "Cell phone", with: @member.cell_phone
    fill_in "Company address", with: @member.company_address
    fill_in "Company area", with: @member.company_area
    fill_in "Company cell phone", with: @member.company_cell_phone
    fill_in "Company email", with: @member.company_email
    fill_in "Company logo", with: @member.company_logo
    fill_in "Company name", with: @member.company_name
    fill_in "Company nif", with: @member.company_nif
    fill_in "Email", with: @member.email
    fill_in "Name", with: @member.name
    fill_in "Pack", with: @member.pack_id
    check "Status" if @member.status
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "should destroy Member" do
    visit member_url(@member)
    click_on "Destroy this member", match: :first

    assert_text "Member was successfully destroyed"
  end
end
