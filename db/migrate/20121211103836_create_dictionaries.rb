class CreateDictionaries < ActiveRecord::Migration
  def migrate(direction)
    super
    create_citier_view(Dictionary) if direction == :up
    drop_citier_view(Dictionary) if direction == :down
  end

  def change
    create_table :dictionaries do |t|
      t.string :lf
      t.string :tf
    end
  end
end
