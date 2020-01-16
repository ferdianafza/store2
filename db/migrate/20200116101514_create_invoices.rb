class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.belongs_to :order_id, null: false, foreign_key: true
      t.string :order

      t.timestamps
    end
  end
end
