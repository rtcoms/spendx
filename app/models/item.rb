class Item < ActiveRecord::Base

  validates :name, presence: true

end

=begin
Item.count
i = Item.new
i.name = "asd"
i.affiliated_url = 'asd'
i.url = "asd"
i.price = Money.new(10000, "INR")
=end
