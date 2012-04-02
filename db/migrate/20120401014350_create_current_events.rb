class CreateCurrentEvents < ActiveRecord::Migration
  def change
    create_table :current_events do |t|
      t.string :name
      t.string :link
      t.string :dates
      t.string :location
      t.string :information
      t.date :orderby

      t.timestamps
    end
  end
end
