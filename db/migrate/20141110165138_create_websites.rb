class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name, null: false, index: true
      t.string :country, null: false, index: true
      t.string :website_url, null: false
      t.string :currency, null: false
      t.string :affiliate_id, null: false

      t.timestamps null: false
    end
  end
end
