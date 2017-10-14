class CreateBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :billings do |t|
      t.integer :amount
      t.string :token
      t.string :reciep_id

      t.timestamps
    end
  end
end
