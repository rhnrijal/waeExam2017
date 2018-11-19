require 'test_helper'

class OfferingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offering = offerings(:one)
  end

  test "should get index" do
    get offerings_url
    assert_response :success
  end

  test "should get new" do
    get new_offering_url
    assert_response :success
  end

  test "should create offering" do
    assert_difference('Offering.count') do
      post offerings_url, params: { offering: { semester: @offering.semester, year: @offering.year } }
    end

    assert_redirected_to offering_url(Offering.last)
  end

  test "should show offering" do
    get offering_url(@offering)
    assert_response :success
  end

  test "should get edit" do
    get edit_offering_url(@offering)
    assert_response :success
  end

  test "should update offering" do
    patch offering_url(@offering), params: { offering: { semester: @offering.semester, year: @offering.year } }
    assert_redirected_to offering_url(@offering)
  end

  test "should destroy offering" do
    assert_difference('Offering.count', -1) do
      delete offering_url(@offering)
    end

    assert_redirected_to offerings_url
  end
end
