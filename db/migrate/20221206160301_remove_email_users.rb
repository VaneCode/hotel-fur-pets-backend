class RemoveEmailUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
  end
end
