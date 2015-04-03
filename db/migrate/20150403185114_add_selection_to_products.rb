class AddSelectionToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :selection, :boolean
  end
end
