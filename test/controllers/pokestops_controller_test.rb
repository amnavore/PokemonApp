require 'test_helper'

class PokestopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokestop = pokestops(:one)
  end

  test "should get index" do
    get pokestops_url
    assert_response :success
  end

  test "should get new" do
    get new_pokestop_url
    assert_response :success
  end

  test "should create pokestop" do
    assert_difference('Pokestop.count') do
      post pokestops_url, params: { pokestop: { location: @pokestop.location, name: @pokestop.name } }
    end

    assert_redirected_to pokestop_url(Pokestop.last)
  end

  test "should show pokestop" do
    get pokestop_url(@pokestop)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokestop_url(@pokestop)
    assert_response :success
  end

  test "should update pokestop" do
    patch pokestop_url(@pokestop), params: { pokestop: { location: @pokestop.location, name: @pokestop.name } }
    assert_redirected_to pokestop_url(@pokestop)
  end

  test "should destroy pokestop" do
    assert_difference('Pokestop.count', -1) do
      delete pokestop_url(@pokestop)
    end

    assert_redirected_to pokestops_url
  end
end
