class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|
      t.string :title
      t.text :page_text

      t.timestamps
    end
  end
end
