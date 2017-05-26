class CreateChangjings < ActiveRecord::Migration[5.0]
  def change
    create_table :changjings do |t|
      t.string :name
      t.timestamps
    end
    add_column :products, :changjing_id, :integer
  end
end
