class AddAwayScoreToMatches < ActiveRecord::Migration[8.1]
  def change
    add_column :matches, :away_score, :integer
  end
end
