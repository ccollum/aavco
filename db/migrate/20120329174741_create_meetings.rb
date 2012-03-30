class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :city
      t.string :days
      t.string :time
      t.string :title
      t.string :code
      t.string :vc_id
      t.string :gso_id
      t.integer :location_id
      t.string :active
      t.integer :day_number

      t.timestamps
    end
  end
end
