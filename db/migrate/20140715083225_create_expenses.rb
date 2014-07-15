class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.string :description
      t.string :whofor
      t.string :urgency
      t.integer :user_id

      t.timestamps
    end
  end
end
