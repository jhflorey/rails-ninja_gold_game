require 'test_helper'

class DojosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dojos_index_url
    assert_response :success
  end

  test "should get farm" do
    get dojos_farm_url
    assert_response :success
  end

  test "should get cave" do
    get dojos_cave_url
    assert_response :success
  end

  test "should get house" do
    get dojos_house_url
    assert_response :success
  end

  test "should get casino" do
    get dojos_casino_url
    assert_response :success
  end

end
