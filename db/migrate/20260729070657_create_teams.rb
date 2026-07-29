class CreateTeams < ActiveRecord::Migration[8.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :short_name
      t.string :crest_url
      t.integer :founder_year
      t.integer :external_id

      t.timestamps
    end

      add_index :teams, :external_id, unique: true
  end
end
