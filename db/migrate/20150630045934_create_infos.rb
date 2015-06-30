class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :point
      t.integer :user_id

      t.timestamps
    end
  end
end
