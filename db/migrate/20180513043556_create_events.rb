class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :host, null: false
      t.text :description
      t.string :location
      t.string :event_type

      t.references :conference

      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end

    add_index :events, [:name], unique: true
  end
end
