class CreateAudios < ActiveRecord::Migration
  def migrate(direction)
    super
    create_citier_view(Audio) if direction == :up
    drop_citier_view(Audio) if direction == :down
  end

  def change
    create_table :audios do |t|
      t.string :title
      t.string :genre
    end
  end
end
