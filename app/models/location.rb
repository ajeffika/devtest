class Location < ApplicationRecord
  belongs_to :country
  has_many :location_groups
end
