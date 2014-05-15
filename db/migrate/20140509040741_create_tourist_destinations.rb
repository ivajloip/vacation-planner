class CreateTouristDestinations < ActiveRecord::Migration
  def change
    create_table :tourist_destinations do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
