class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.integer :number
      t.float :size
      t.boolean :used
      t.text :features
      t.belongs_to :campingsite, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
