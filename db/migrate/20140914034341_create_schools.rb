class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :name_in_hindi
      t.string :brief
      t.integer :established_in
      t.string :contact_no

      t.timestamps
    end
  end
end
