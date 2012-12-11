class CreateBooks < ActiveRecord::Migration
  def migrate(direction)
    super
    create_citier_view(Book) if direction == :up
    drop_citier_view(Book) if direction == :down
  end

  def change
    create_table :tablebooks do |t|
      t.string :title
      t.string :author
    end
  end
end

