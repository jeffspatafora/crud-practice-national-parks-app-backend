class CreateNationalParks < ActiveRecord::Migration[7.0]
  def change
    create_table :national_parks do |t|
      t.string :name
      t.integer :size_square_miles
      t.string :state
      t.integer :date_founded
      t.string :map_image

      t.timestamps
    end
  end
end
