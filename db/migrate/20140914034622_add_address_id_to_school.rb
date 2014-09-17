class AddAddressIdToSchool < ActiveRecord::Migration
  def change
      add_column :schools,:fee_id,:integer
  end
end
