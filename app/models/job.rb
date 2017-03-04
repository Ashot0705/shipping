class Job < ApplicationRecord
	validates_presence_of :description, :origin, :destination, :quantity, :cost

	validates_numericality_of :cost, greater_than_or_equal_to: 1000

	validates :description, length: { minimum: 50 }

end
