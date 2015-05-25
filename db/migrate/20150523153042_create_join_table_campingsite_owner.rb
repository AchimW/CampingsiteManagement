class CreateJoinTableCampingsiteOwner < ActiveRecord::Migration
  def change
    create_join_table :campingsites, :owners do |t|
      t.index [:campingsite_id, :owner_id]
      t.index [:owner_id, :campingsite_id]
    end
  end
end
