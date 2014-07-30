class Expense < ActiveRecord::Base
	belongs_to :user
	belongs_to :treasurer
    belongs_to :urgency
    validates :amount, :description, :treasurer_id, :urgency_id, presence: true
end
