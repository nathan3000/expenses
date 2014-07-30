class Expense < ActiveRecord::Base
	belongs_to :user
	belongs_to :treasurer
    belongs_to :urgency
    validates :amount, :description, :treasurer_id, :urgency_id, presence: true

    def self.to_csv(options = {})
    	CSV.generate(options) do |csv|
    		csv << column_names
    		all.each do |product|
    			csv << product.attributes.values_at(*column_names)
    		end
    	end
    end
end
