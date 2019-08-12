class CreateOtakus < ActiveRecord::Migration[5.2]
  def change
    create_table :otakus do |t|
      t.string :name

      t.timestamps
    end
  end
end
