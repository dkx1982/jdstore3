class CreateDkxes < ActiveRecord::Migration[5.0]
  def change
    create_table :dkxes do |t|
      t.integer :product_id
      t.integer :changjing_id
      t.timestamps
    end
  end
end
