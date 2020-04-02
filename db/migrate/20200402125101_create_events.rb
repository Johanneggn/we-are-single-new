class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :kind
      t.string :address
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :price
      t.float :latitude
      t.float :longitude
      t.string :link

      t.timestamps
    end
  end
end
