class AddUserIdToLyrics < ActiveRecord::Migration
  def change
  	add_reference :lyrics, :user, index: true, foreign_key: true
  end
end
