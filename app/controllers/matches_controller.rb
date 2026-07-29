class MatchesController < ApplicationController
  def index
    @matches = Match.all.includes(:home_team, :away_team)
  end
end
