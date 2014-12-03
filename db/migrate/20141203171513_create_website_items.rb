class CreateWebsiteItems < ActiveRecord::Migration
  def change
    create_table :website_items do |t|
      t.references :item, null: false, index: true
      t.references :website, null: false, index: true
      t.string :url, null: false
      t.string :affiliated_url, null: false
      t.string :country, null: false, index: true
      t.string :image_url

      t.timestamps null: false
    end
    add_money :website_items, :price, currency: { present: true }
  end
end
