class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :name_link
      t.string :dates
      t.string :location
      t.string :info
      t.date :order_by

      t.timestamps
    end
  end
end
