class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.string :title
      t.text :page_text

      t.timestamps
    end
  end
end
