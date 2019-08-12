class Location < ApplicationRecord
  has_many :otaku_figs
  validates :name, presence: true, uniqueness: { scope: :loc_type }
end
