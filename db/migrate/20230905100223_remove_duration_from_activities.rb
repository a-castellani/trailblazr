class RemoveDurationFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :duration, :decimal
  end
end
