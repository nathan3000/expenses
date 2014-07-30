class AddTreasurerForeignKey < ActiveRecord::Migration
  def change
  	add_column :expenses, :treasurer_id, :integer
  	remove_column :expenses, :whofor, :string
  end
end
