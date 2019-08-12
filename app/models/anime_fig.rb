class AnimeFig < ApplicationRecord
  belongs_to :fig_type
  has_many :otaku_figs
  has_many :otakus, through :otaku_figs
  validates :character, presence: true, uniqueness: { scope: :series }
  validates :series, presence: true

end
