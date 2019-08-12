class OtakuFig < ApplicationRecord
  belongs_to :otaku
  belongs_to :anime_fig
  belongs_to :location
  validates :anime_fig_id, uniqueness: { scope: :otaku_id }
end
