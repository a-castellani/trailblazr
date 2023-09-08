class AddDaytoSelection < ActiveRecord::Migration[7.0]
  def change
    add_column :selections, :day, :integer
  end
end
