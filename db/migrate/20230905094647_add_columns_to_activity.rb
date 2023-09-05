class AddColumnsToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :price, :integer
    add_column :activities, :image_url, :string
    add_column :activities, :desription_title, :string
    add_column :activities, :description, :text
  end
end
