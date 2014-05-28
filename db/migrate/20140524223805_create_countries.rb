class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :display_name
      t.string :full_name
      t.string :code
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
