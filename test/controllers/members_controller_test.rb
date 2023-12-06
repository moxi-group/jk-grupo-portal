require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference("Member.count") do
      post members_url, params: { member: { cell_phone: @member.cell_phone, company_address: @member.company_address, company_area: @member.company_area, company_cell_phone: @member.company_cell_phone, company_email: @member.company_email, company_logo: @member.company_logo, company_name: @member.company_name, company_nif: @member.company_nif, email: @member.email, name: @member.name, pack_id: @member.pack_id, status: @member.status } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { cell_phone: @member.cell_phone, company_address: @member.company_address, company_area: @member.company_area, company_cell_phone: @member.company_cell_phone, company_email: @member.company_email, company_logo: @member.company_logo, company_name: @member.company_name, company_nif: @member.company_nif, email: @member.email, name: @member.name, pack_id: @member.pack_id, status: @member.status } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference("Member.count", -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
