class CreateAnimeFigs < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_figs do |t|
      t.string :character
      t.string :series
      t.string :fig_type
      t.string :brand

      t.timestamps
    end
  end
end
