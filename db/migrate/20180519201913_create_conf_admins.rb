class CreateConfAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :conf_admins do |t|
      t.references :admin
      t.references :conference
      
      t.timestamps
    end
  end
end
