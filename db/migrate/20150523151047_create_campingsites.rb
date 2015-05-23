class CreateCampingsites < ActiveRecord::Migration
  def change
    create_table :campingsites do |t|
      t.string :name
      t.string :address
      t.text :features

      t.timestamps null: false
    end
  end
end
