require 'test_helper'

class NbaTeamDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_team_datum = nba_team_data(:one)
  end

  test "should get index" do
    get nba_team_data_url, as: :json
    assert_response :success
  end

  test "should create nba_team_datum" do
    assert_difference('NbaTeamDatum.count') do
      post nba_team_data_url, params: { nba_team_datum: { lost: @nba_team_datum.lost, season: @nba_team_datum.season, srs: @nba_team_datum.srs, team_id: @nba_team_datum.team_id, top_player_id: @nba_team_datum.top_player_id, win: @nba_team_datum.win } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_team_datum" do
    get nba_team_datum_url(@nba_team_datum), as: :json
    assert_response :success
  end

  test "should update nba_team_datum" do
    patch nba_team_datum_url(@nba_team_datum), params: { nba_team_datum: { lost: @nba_team_datum.lost, season: @nba_team_datum.season, srs: @nba_team_datum.srs, team_id: @nba_team_datum.team_id, top_player_id: @nba_team_datum.top_player_id, win: @nba_team_datum.win } }, as: :json
    assert_response 200
  end

  test "should destroy nba_team_datum" do
    assert_difference('NbaTeamDatum.count', -1) do
      delete nba_team_datum_url(@nba_team_datum), as: :json
    end

    assert_response 204
  end
end
