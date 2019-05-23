require 'test_helper'

class SblPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbl_player = sbl_players(:one)
  end

  test "should get index" do
    get sbl_players_url, as: :json
    assert_response :success
  end

  test "should create sbl_player" do
    assert_difference('SblPlayer.count') do
      post sbl_players_url, params: { sbl_player: { birth: @sbl_player.birth, height: @sbl_player.height, name: @sbl_player.name, position: @sbl_player.position, weight: @sbl_player.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show sbl_player" do
    get sbl_player_url(@sbl_player), as: :json
    assert_response :success
  end

  test "should update sbl_player" do
    patch sbl_player_url(@sbl_player), params: { sbl_player: { birth: @sbl_player.birth, height: @sbl_player.height, name: @sbl_player.name, position: @sbl_player.position, weight: @sbl_player.weight } }, as: :json
    assert_response 200
  end

  test "should destroy sbl_player" do
    assert_difference('SblPlayer.count', -1) do
      delete sbl_player_url(@sbl_player), as: :json
    end

    assert_response 204
  end
end
