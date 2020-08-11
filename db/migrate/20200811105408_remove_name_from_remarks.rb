class RemoveNameFromRemarks < ActiveRecord::Migration[5.2]
  def change
    remove_column :remarks, :name, :string
  end
end
