require 'test_helper'

class SblTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbl_team = sbl_teams(:one)
  end

  test "should get index" do
    get sbl_teams_url, as: :json
    assert_response :success
  end

  test "should create sbl_team" do
    assert_difference('SblTeam.count') do
      post sbl_teams_url, params: { sbl_team: { championships: @sbl_team.championships, name: @sbl_team.name, playoff_count: @sbl_team.playoff_count, total_lost: @sbl_team.total_lost, total_win: @sbl_team.total_win } }, as: :json
    end

    assert_response 201
  end

  test "should show sbl_team" do
    get sbl_team_url(@sbl_team), as: :json
    assert_response :success
  end

  test "should update sbl_team" do
    patch sbl_team_url(@sbl_team), params: { sbl_team: { championships: @sbl_team.championships, name: @sbl_team.name, playoff_count: @sbl_team.playoff_count, total_lost: @sbl_team.total_lost, total_win: @sbl_team.total_win } }, as: :json
    assert_response 200
  end

  test "should destroy sbl_team" do
    assert_difference('SblTeam.count', -1) do
      delete sbl_team_url(@sbl_team), as: :json
    end

    assert_response 204
  end
end
