class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :host, null: false
      t.text :description
      t.string :location

      t.references :conference

      t.datetime :starts
      t.datetime :ends

      t.timestamps
    end

    add_index :events, [:name], unique: true
  end
end
