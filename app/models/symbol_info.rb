class SymbolInfo < ActiveRecord::Base
  attr_accessible :company_name, :exchange, :symbol

  has_many :daily_prices
end
