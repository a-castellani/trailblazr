class RemoveSelectionIdFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :selection_id
  end
end
