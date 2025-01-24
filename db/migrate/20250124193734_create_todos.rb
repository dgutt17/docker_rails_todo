class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :description
      t.integer :points
      t.timestamps
    end
  end
end
