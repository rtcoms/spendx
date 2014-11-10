class WebItem < ActiveRecord::Base
  monetize :price_subunits, with_model_currency: :price_currency

  validates :item, :website, :url, :affiliated_url, :country, presence: true

  belongs_to :websites
  belongs_to :items
end
