class CreateAnimeFigs < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_figs do |t|
      t.string :character
      t.string :series
      t.references :fig_type, foreign_key: true

      t.timestamps
    end
  end
end
