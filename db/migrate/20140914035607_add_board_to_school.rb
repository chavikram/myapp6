class AddBoardToSchool < ActiveRecord::Migration
  def change
      add_column :schools,:board_id,:integer

  end
end
