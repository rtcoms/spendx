class CreateWebItems < ActiveRecord::Migration
  def change
    create_table :web_items do |t|
      t.references :item
      t.references :website
      t.string :url
      t.string :affiliated_url
      t.string :country
      t.string :image_url

      t.timestamps null: false
    end
    add_money :items, :price, currency: { present: true }
  end
end
