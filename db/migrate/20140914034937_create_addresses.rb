class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :plot_no
      t.string :street
      t.string :colony
      t.string :city
      t.string :state
      t.string :country
      t.string :pin_code

      t.timestamps
    end
  end
end
