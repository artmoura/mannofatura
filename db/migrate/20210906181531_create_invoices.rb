class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :name
      t.date :due_date
      t.date :paid_date
      t.float :amount, precision: 5, scale: 2
      t.integer :kind
      t.string :status

      t.timestamps
    end
  end
end
