class AddUrgencyIdToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :urgency_id, :integer
  end
end
