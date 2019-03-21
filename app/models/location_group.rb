class LocationGroup < ApplicationRecord
  has_many :locations
  belongs_to :country
  belongs_to :panel_provider
end
