require 'test_helper'

class CreateRafflesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_raffle = create_raffles(:one)
  end

  test "should get index" do
    get create_raffles_url
    assert_response :success
  end

  test "should get new" do
    get new_create_raffle_url
    assert_response :success
  end

  test "should create create_raffle" do
    assert_difference('CreateRaffle.count') do
      post create_raffles_url, params: { create_raffle: {  } }
    end

    assert_redirected_to create_raffle_url(CreateRaffle.last)
  end

  test "should show create_raffle" do
    get create_raffle_url(@create_raffle)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_raffle_url(@create_raffle)
    assert_response :success
  end

  test "should update create_raffle" do
    patch create_raffle_url(@create_raffle), params: { create_raffle: {  } }
    assert_redirected_to create_raffle_url(@create_raffle)
  end

  test "should destroy create_raffle" do
    assert_difference('CreateRaffle.count', -1) do
      delete create_raffle_url(@create_raffle)
    end

    assert_redirected_to create_raffles_url
  end
end
