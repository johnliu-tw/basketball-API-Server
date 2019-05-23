require 'test_helper'

class NbaPlayerDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_player_datum = nba_player_data(:one)
  end

  test "should get index" do
    get nba_player_data_url, as: :json
    assert_response :success
  end

  test "should create nba_player_datum" do
    assert_difference('NbaPlayerDatum.count') do
      post nba_player_data_url, params: { nba_player_datum: { 3p: @nba_player_datum.3p, 3pa: @nba_player_datum.3pa, 3pp: @nba_player_datum.3pp, age: @nba_player_datum.age, ast: @nba_player_datum.ast, blk: @nba_player_datum.blk, drb: @nba_player_datum.drb, fg: @nba_player_datum.fg, fga: @nba_player_datum.fga, fgp: @nba_player_datum.fgp, ft: @nba_player_datum.ft, fta: @nba_player_datum.fta, ftp: @nba_player_datum.ftp, g: @nba_player_datum.g, gs: @nba_player_datum.gs, mp: @nba_player_datum.mp, orb: @nba_player_datum.orb, pf: @nba_player_datum.pf, player_id: @nba_player_datum.player_id, pts: @nba_player_datum.pts, season: @nba_player_datum.season, stl: @nba_player_datum.stl, team_id: @nba_player_datum.team_id, tov: @nba_player_datum.tov, trb: @nba_player_datum.trb } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_player_datum" do
    get nba_player_datum_url(@nba_player_datum), as: :json
    assert_response :success
  end

  test "should update nba_player_datum" do
    patch nba_player_datum_url(@nba_player_datum), params: { nba_player_datum: { 3p: @nba_player_datum.3p, 3pa: @nba_player_datum.3pa, 3pp: @nba_player_datum.3pp, age: @nba_player_datum.age, ast: @nba_player_datum.ast, blk: @nba_player_datum.blk, drb: @nba_player_datum.drb, fg: @nba_player_datum.fg, fga: @nba_player_datum.fga, fgp: @nba_player_datum.fgp, ft: @nba_player_datum.ft, fta: @nba_player_datum.fta, ftp: @nba_player_datum.ftp, g: @nba_player_datum.g, gs: @nba_player_datum.gs, mp: @nba_player_datum.mp, orb: @nba_player_datum.orb, pf: @nba_player_datum.pf, player_id: @nba_player_datum.player_id, pts: @nba_player_datum.pts, season: @nba_player_datum.season, stl: @nba_player_datum.stl, team_id: @nba_player_datum.team_id, tov: @nba_player_datum.tov, trb: @nba_player_datum.trb } }, as: :json
    assert_response 200
  end

  test "should destroy nba_player_datum" do
    assert_difference('NbaPlayerDatum.count', -1) do
      delete nba_player_datum_url(@nba_player_datum), as: :json
    end

    assert_response 204
  end
end
