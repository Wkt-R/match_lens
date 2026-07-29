class CreateSeasons < ActiveRecord::Migration[8.1]
  def change
    create_table :seasons do |t|
      t.string :year
      t.date :start_date
      t.date :end_date
      t.references :competition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
