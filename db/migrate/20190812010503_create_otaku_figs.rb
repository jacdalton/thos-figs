class CreateOtakuFigs < ActiveRecord::Migration[5.2]
  def change
    create_table :otaku_figs do |t|
      t.datetime :purchased_on
      t.references :otaku, foreign_key: true
      t.references :anime_fig, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
