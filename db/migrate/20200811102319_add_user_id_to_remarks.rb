class AddUserIdToRemarks < ActiveRecord::Migration[5.2]
  def change
    add_column :remarks, :user_id, :integer
  end
end
