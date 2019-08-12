class AnimeFig < ApplicationRecord
  has_many :otaku_figs, inverse_of: :anime_fig
  has_many :otakus, through: :otaku_figs
  validates :character, presence: true, uniqueness: { scope: :series }
  validates :series, presence: true
  # accepts_nested_attributes_for :otaku_figs

  FIGTYPES = ["Plush", "PVC Figure", "Vinyl Figure", "Plastic Figure", "Polystone (Polyethylene) Statuette", "Resin Figure", "Acrylic Stand"]

  BRANDS = ["Banpresto", "Nendoroid (Good Smile)", "SEGA", "Taito", "Figma (Good Smile)", "Funko", "Sideshow", "Sentinel", "Bandai", "Tsum-Tsum (Disney)"]
end
