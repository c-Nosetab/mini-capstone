class ChangeDescriptionInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 6, scale: 2
    add_column :products, :stock, :boolean, default: true
  end
end
