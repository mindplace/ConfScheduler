class CreateConferences < ActiveRecord::Migration[5.1]
  def change
    create_table :conferences do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.text :description

      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps
    end

    add_index :conferences, [:name, :url], unique: true
  end
end
