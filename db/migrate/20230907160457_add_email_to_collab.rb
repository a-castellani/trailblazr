class AddEmailToCollab < ActiveRecord::Migration[7.0]
  def change
    add_column :collaborations, :email, :string
  end
end
