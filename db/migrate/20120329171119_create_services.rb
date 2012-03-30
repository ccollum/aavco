class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :page_text
      t.string :subtitle
      t.text :service_meetings

      t.timestamps
    end
  end
end
