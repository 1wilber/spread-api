# frozen_string_literal: true

class SpreadAlert < ActiveRecord::Base
  with_options presence: true do
    validates :market_id, uniqueness: true
    validates :spread
  end
end
