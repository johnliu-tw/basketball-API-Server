require 'test_helper'

class NbaPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_player = nba_players(:one)
  end

  test "should get index" do
    get nba_players_url, as: :json
    assert_response :success
  end

  test "should create nba_player" do
    assert_difference('NbaPlayer.count') do
      post nba_players_url, params: { nba_player: { birth: @nba_player.birth, country: @nba_player.country, draft_pick: @nba_player.draft_pick, draft_team: @nba_player.draft_team, draft_year: @nba_player.draft_year, end_year: @nba_player.end_year, height: @nba_player.height, name: @nba_player.name, position: @nba_player.position, school: @nba_player.school, start_year: @nba_player.start_year, weight: @nba_player.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_player" do
    get nba_player_url(@nba_player), as: :json
    assert_response :success
  end

  test "should update nba_player" do
    patch nba_player_url(@nba_player), params: { nba_player: { birth: @nba_player.birth, country: @nba_player.country, draft_pick: @nba_player.draft_pick, draft_team: @nba_player.draft_team, draft_year: @nba_player.draft_year, end_year: @nba_player.end_year, height: @nba_player.height, name: @nba_player.name, position: @nba_player.position, school: @nba_player.school, start_year: @nba_player.start_year, weight: @nba_player.weight } }, as: :json
    assert_response 200
  end

  test "should destroy nba_player" do
    assert_difference('NbaPlayer.count', -1) do
      delete nba_player_url(@nba_player), as: :json
    end

    assert_response 204
  end
end
