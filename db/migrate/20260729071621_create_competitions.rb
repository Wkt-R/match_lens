class CreateCompetitions < ActiveRecord::Migration[8.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :code
      t.integer :external_id

      t.timestamps
    end
  end
end
