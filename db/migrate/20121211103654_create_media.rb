class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :type
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
