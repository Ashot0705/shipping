class Boat < ApplicationRecord
	has_many :jobboats
	has_many :jobs, through: :jobboats
	validates :name, uniqueness: true
end
