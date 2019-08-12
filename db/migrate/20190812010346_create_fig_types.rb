class CreateFigTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :fig_types do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
