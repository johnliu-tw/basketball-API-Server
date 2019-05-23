require 'test_helper'

class SblTeamDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbl_team_datum = sbl_team_data(:one)
  end

  test "should get index" do
    get sbl_team_data_url, as: :json
    assert_response :success
  end

  test "should create sbl_team_datum" do
    assert_difference('SblTeamDatum.count') do
      post sbl_team_data_url, params: { sbl_team_datum: { lost: @sbl_team_datum.lost, ranking: @sbl_team_datum.ranking, season: @sbl_team_datum.season, team_id: @sbl_team_datum.team_id, win: @sbl_team_datum.win } }, as: :json
    end

    assert_response 201
  end

  test "should show sbl_team_datum" do
    get sbl_team_datum_url(@sbl_team_datum), as: :json
    assert_response :success
  end

  test "should update sbl_team_datum" do
    patch sbl_team_datum_url(@sbl_team_datum), params: { sbl_team_datum: { lost: @sbl_team_datum.lost, ranking: @sbl_team_datum.ranking, season: @sbl_team_datum.season, team_id: @sbl_team_datum.team_id, win: @sbl_team_datum.win } }, as: :json
    assert_response 200
  end

  test "should destroy sbl_team_datum" do
    assert_difference('SblTeamDatum.count', -1) do
      delete sbl_team_datum_url(@sbl_team_datum), as: :json
    end

    assert_response 204
  end
end
