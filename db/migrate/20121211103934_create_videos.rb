class CreateVideos < ActiveRecord::Migration
  def migrate(direction)
    super
    create_citier_view(Video) if direction == :up
    drop_citier_view(Video) if direction == :down
  end

  def change
    create_table :videos do |t|
      t.string :title
      t.string :genre
    end
  end
end
