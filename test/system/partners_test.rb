require "application_system_test_case"

class PartnersTest < ApplicationSystemTestCase
  setup do
    @partner = partners(:one)
  end

  test "visiting the index" do
    visit partners_url
    assert_selector "h1", text: "Partners"
  end

  test "should create partner" do
    visit partners_url
    click_on "New partner"

    fill_in "Description", with: @partner.description
    fill_in "Name", with: @partner.name
    fill_in "Picture", with: @partner.picture
    fill_in "Slug", with: @partner.slug
    click_on "Create Partner"

    assert_text "Partner was successfully created"
    click_on "Back"
  end

  test "should update Partner" do
    visit partner_url(@partner)
    click_on "Edit this partner", match: :first

    fill_in "Description", with: @partner.description
    fill_in "Name", with: @partner.name
    fill_in "Picture", with: @partner.picture
    fill_in "Slug", with: @partner.slug
    click_on "Update Partner"

    assert_text "Partner was successfully updated"
    click_on "Back"
  end

  test "should destroy Partner" do
    visit partner_url(@partner)
    click_on "Destroy this partner", match: :first

    assert_text "Partner was successfully destroyed"
  end
end
