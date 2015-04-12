class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :header
      t.text :description
      t.string :image_src
      t.text :comments

      t.timestamps null: false
    end
  end
end
