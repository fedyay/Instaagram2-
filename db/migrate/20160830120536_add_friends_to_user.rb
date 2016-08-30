class AddFriendsToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :friends, foreign_key: true
  end
end
