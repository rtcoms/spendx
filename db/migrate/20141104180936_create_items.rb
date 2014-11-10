class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.string :image_url
      t.text   :description
      t.timestamps null: false
    end

  end
end
