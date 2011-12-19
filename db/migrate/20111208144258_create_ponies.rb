class CreatePonies < ActiveRecord::Migration
  def change
    create_table :ponies do |t|
      t.string :name
      t.string :power
      t.string :color
      t.string :pony_username

      t.timestamps
    end
  end
end
