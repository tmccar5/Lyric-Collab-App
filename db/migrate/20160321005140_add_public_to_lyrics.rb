class AddPublicToLyrics < ActiveRecord::Migration
  def change
    add_column :lyrics, :public, :boolean
  end
end
