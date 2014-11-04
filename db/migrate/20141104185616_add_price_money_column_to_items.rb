class AddPriceMoneyColumnToItems < ActiveRecord::Migration
  def change
    add_money :items, :price, currency: { present: true }
  end
end
