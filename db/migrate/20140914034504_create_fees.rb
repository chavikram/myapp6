class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.integer :adm_fee
      t.integer :annual_fee
      t.integer :mis_fee
      t.integer :year

      t.timestamps
    end
  end
end
