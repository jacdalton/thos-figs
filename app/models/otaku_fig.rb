class OtakuFig < ApplicationRecord
  belongs_to :otaku
  belongs_to :anime_fig, inverse_of: :otaku_figs
  belongs_to :location
  validates :anime_fig_id, uniqueness: { scope: :otaku_id }
  accepts_nested_attributes_for :anime_fig
end
