class AddDesriptionTitleToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :description_title, :string
  end
end
