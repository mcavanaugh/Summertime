class DailyPrice < ActiveRecord::Base
  attr_accessible :closing, :high, :low, :opening, :symbol, :volume

  belongs_to :symbol_info
end
