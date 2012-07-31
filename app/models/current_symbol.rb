class CurrentSymbol < ActiveRecord::Base
  attr_accessible :active_date, :symbol

  belongs_to :symbol_info
end
