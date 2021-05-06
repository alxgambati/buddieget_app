class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :category
      t.string :description
      t.float :price
      t.string :city

      t.timestamps
    end
  end
end
