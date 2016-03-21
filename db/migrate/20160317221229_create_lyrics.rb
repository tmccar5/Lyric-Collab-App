class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :song
      t.text :verse1
      t.text :chorus
      t.text :verse2
      t.text :bridge

      t.timestamps null: false
    end
  end
end
