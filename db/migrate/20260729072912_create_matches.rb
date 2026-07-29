class CreateMatches < ActiveRecord::Migration[8.1]
  def change
    create_table :matches do |t|
      t.references :season, null: false, foreign_key: true
      t.references :home_team, null: false, foreign_key: { to_table: :teams }
      t.references :away_team, null: false, foreign_key: { to_table: :teams }
      t.integer :home_score
      t.string :status
      t.integer :matchday
      t.datetime :kickoff_at
      t.integer :external_id

      t.timestamps
    end

    add_index :matches, :external_id, unique: true
  end
end
