class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :location
      t.integer :number_of_people
      t.decimal :duration
      t.text :tags
      t.string :name

      t.timestamps
    end
  end
end
