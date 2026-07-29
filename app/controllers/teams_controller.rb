class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @matches = (@team.home_matches + @team.away_matches).sort_by(&:kickoff_at)
  end
end
