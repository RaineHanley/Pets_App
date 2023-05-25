class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :animal
      t.string :breed
      t.string :color
      t.string :size
      t.integer :age
      t.string :img_url

      t.timestamps
    end
  end
end
