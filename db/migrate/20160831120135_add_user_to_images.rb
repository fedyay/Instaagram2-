class AddUserToImages < ActiveRecord::Migration[5.0]
  def change
    add_reference :images, :author, foreign_key: true
  end
end
