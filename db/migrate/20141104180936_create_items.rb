class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.string :affiliated_url, null: false
      t.money  :price, null: false

      t.timestamps null: false
    end
  end
end
