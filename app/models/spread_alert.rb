# frozen_string_literal: true

class SpreadAlert < ActiveRecord::Base
  with_options presence: true do
    validates :market_id, uniqueness: true
    validates :spread
  end

  def message(current_spread)
    return :greater if current_spread > spread
    return :lower if current_spread < spread

    :equal
  end
end
