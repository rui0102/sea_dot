class AddIndexToCreaturesInfo < ActiveRecord::Migration[5.1]
  def change
    add_index :creatures_infos, [:user_id, :created_at]
   #Ex:- add_index("admin_users", "username")
  end
end
