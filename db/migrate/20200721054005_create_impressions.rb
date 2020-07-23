class CreateImpressions < ActiveRecord::Migration[6.0]
  def change
    create_table :impressions do |t|
      t.string :title
      t.string :text
      t.timestamps
    end
  end
end
