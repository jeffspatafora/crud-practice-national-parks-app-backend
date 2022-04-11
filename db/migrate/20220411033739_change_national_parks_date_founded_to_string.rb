class ChangeNationalParksDateFoundedToString < ActiveRecord::Migration[7.0]
  def change
    change_column :national_parks, :date_founded, :string
  end
end
