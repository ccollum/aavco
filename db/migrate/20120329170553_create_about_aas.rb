class CreateAboutAas < ActiveRecord::Migration
  def change
    create_table :about_aas do |t|
      t.string :title
      t.text :page_text

      t.timestamps
    end
  end
end
