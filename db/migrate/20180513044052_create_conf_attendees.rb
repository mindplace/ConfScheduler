class CreateConfAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :conf_attendees do |t|
      t.references :user
      t.references :conference

      t.timestamps
    end
  end
end
