class Item < ActiveRecord::Base
  monetize :price_subunits, with_model_currency: :price_currency

  validates :name, :url, :affiliated_url, presence: true

end

=begin
Item.count
i = Item.new
i.name = "asd"
i.affiliated_url = 'asd'
i.url = "asd"
i.price = Money.new(10000, "INR")
=end
