class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_at
      t.datetime :end_at
      t.string :color
      t.boolean :all_day

      t.timestamps
    end
  end
end
