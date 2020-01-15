class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.bigint :stock
      t.decimal :price, precision: 8, scale: 2
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
