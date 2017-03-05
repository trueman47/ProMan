class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :CustomerName
      t.string :Industry
      t.string :Email
      t.string :Phone
      t.text :Notes

      t.timestamps
    end
  end
end
