class Otaku < ApplicationRecord
  has_many :otaku_figs, dependent: :destroy
  has_many :anime_figs, through :otaku_figs
  validates :name, presence: true, uniqueness: true
end
