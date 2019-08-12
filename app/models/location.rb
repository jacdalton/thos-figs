class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :loc_type }
end
