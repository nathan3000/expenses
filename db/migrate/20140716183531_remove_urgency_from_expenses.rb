class RemoveUrgencyFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :urgency, :integer
  end
end
