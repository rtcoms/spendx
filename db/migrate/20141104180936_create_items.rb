class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null:false, index: true
      t.string :image_url
      t.text   :description, null: false
      t.timestamps null: false
    end

  end
end
