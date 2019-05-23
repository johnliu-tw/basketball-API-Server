require 'test_helper'

class SblPlayerDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbl_player_datum = sbl_player_data(:one)
  end

  test "should get index" do
    get sbl_player_data_url, as: :json
    assert_response :success
  end

  test "should create sbl_player_datum" do
    assert_difference('SblPlayerDatum.count') do
      post sbl_player_data_url, params: { sbl_player_datum: { 3p: @sbl_player_datum.3p, 3pa: @sbl_player_datum.3pa, 3pp: @sbl_player_datum.3pp, ast: @sbl_player_datum.ast, blk: @sbl_player_datum.blk, drb: @sbl_player_datum.drb, fg: @sbl_player_datum.fg, fga: @sbl_player_datum.fga, fgp: @sbl_player_datum.fgp, ft: @sbl_player_datum.ft, fta: @sbl_player_datum.fta, ftp: @sbl_player_datum.ftp, g: @sbl_player_datum.g, gs: @sbl_player_datum.gs, orb: @sbl_player_datum.orb, pf: @sbl_player_datum.pf, player_id: @sbl_player_datum.player_id, pts: @sbl_player_datum.pts, season: @sbl_player_datum.season, sp: @sbl_player_datum.sp, stl: @sbl_player_datum.stl, team_id: @sbl_player_datum.team_id, tov: @sbl_player_datum.tov, trb: @sbl_player_datum.trb } }, as: :json
    end

    assert_response 201
  end

  test "should show sbl_player_datum" do
    get sbl_player_datum_url(@sbl_player_datum), as: :json
    assert_response :success
  end

  test "should update sbl_player_datum" do
    patch sbl_player_datum_url(@sbl_player_datum), params: { sbl_player_datum: { 3p: @sbl_player_datum.3p, 3pa: @sbl_player_datum.3pa, 3pp: @sbl_player_datum.3pp, ast: @sbl_player_datum.ast, blk: @sbl_player_datum.blk, drb: @sbl_player_datum.drb, fg: @sbl_player_datum.fg, fga: @sbl_player_datum.fga, fgp: @sbl_player_datum.fgp, ft: @sbl_player_datum.ft, fta: @sbl_player_datum.fta, ftp: @sbl_player_datum.ftp, g: @sbl_player_datum.g, gs: @sbl_player_datum.gs, orb: @sbl_player_datum.orb, pf: @sbl_player_datum.pf, player_id: @sbl_player_datum.player_id, pts: @sbl_player_datum.pts, season: @sbl_player_datum.season, sp: @sbl_player_datum.sp, stl: @sbl_player_datum.stl, team_id: @sbl_player_datum.team_id, tov: @sbl_player_datum.tov, trb: @sbl_player_datum.trb } }, as: :json
    assert_response 200
  end

  test "should destroy sbl_player_datum" do
    assert_difference('SblPlayerDatum.count', -1) do
      delete sbl_player_datum_url(@sbl_player_datum), as: :json
    end

    assert_response 204
  end
end
