class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
