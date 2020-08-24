class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :name
  end
end
