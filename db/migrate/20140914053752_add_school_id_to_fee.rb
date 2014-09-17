class AddSchoolIdToFee < ActiveRecord::Migration
  def change
    add_column :fees,:school_id,:integer

  end
end
