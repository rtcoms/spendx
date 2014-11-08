class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.string :affiliated_url, null: false
      t.string :image_url
      t.string :url
      t.timestamps null: false
    end
    add_money :items, :price, currency: { present: true }
  end
end
