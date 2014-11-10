class WebItem < ActiveRecord::Base
  monetize :price_subunits, with_model_currency: :price_currency
end
