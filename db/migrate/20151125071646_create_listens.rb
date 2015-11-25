class CreateListens < ActiveRecord::Migration
  def change
    create_table :listens do |t|
      t.references :song, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
