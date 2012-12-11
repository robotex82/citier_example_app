class CreateNovels < ActiveRecord::Migration
  def migrate(direction)
    super
    create_citier_view(Novel) if direction == :up
    drop_citier_view(Novel) if direction == :down
  end

  def change
    create_table :novels do |t|
      t.text :summary
    end
  end
end
