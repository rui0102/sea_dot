class CreateCreaturesInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures_infos do |t|

      t.string :title
      t.integer :user_id, null: false
      t.text :content, null: false
      t.string :picture
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.string :weather
      t.integer :sea_lavel
      t.integer :visibility
      t.integer :temperature
      t.string :departure
      t.string :destination

      t.timestamps
    end
  end
end
