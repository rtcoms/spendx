class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :country
      t.string :website_url
      t.string :currency
      t.string :affiliate_id

      t.timestamps null: false
    end
  end
end
