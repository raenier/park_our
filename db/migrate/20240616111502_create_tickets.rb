class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
