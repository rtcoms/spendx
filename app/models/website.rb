class Website < ActiveRecord::Base

  has_many :items, through: :web_items
end
