require 'test_helper'

class NbaTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_team = nba_teams(:one)
  end

  test "should get index" do
    get nba_teams_url, as: :json
    assert_response :success
  end

  test "should create nba_team" do
    assert_difference('NbaTeam.count') do
      post nba_teams_url, params: { nba_team: { championships: @nba_team.championships, name: @nba_team.name, playoff_count: @nba_team.playoff_count, s_name: @nba_team.s_name, seasons: @nba_team.seasons, total_lost: @nba_team.total_lost, total_win: @nba_team.total_win } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_team" do
    get nba_team_url(@nba_team), as: :json
    assert_response :success
  end

  test "should update nba_team" do
    patch nba_team_url(@nba_team), params: { nba_team: { championships: @nba_team.championships, name: @nba_team.name, playoff_count: @nba_team.playoff_count, s_name: @nba_team.s_name, seasons: @nba_team.seasons, total_lost: @nba_team.total_lost, total_win: @nba_team.total_win } }, as: :json
    assert_response 200
  end

  test "should destroy nba_team" do
    assert_difference('NbaTeam.count', -1) do
      delete nba_team_url(@nba_team), as: :json
    end

    assert_response 204
  end
end
