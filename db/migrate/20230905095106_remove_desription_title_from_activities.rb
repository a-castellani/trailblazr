class RemoveDesriptionTitleFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :desription_title, :string
  end
end
