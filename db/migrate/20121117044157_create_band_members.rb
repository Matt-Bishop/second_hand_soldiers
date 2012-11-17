class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|
      t.string :name
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
