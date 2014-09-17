class AddSchoolIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses,:school_id,:integer
   
  end
end
