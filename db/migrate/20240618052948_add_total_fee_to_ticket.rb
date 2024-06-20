class AddTotalFeeToTicket < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :total_fee, :integer, default: 0
  end
end
