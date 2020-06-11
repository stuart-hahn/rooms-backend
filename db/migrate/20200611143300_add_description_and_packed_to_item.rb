class AddDescriptionAndPackedToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :description, :string
    add_column :items, :packed, :boolean, :default => false
  end
end
