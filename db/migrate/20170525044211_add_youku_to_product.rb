class AddYoukuToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :youku, :string
  end
end
