class Boat < ApplicationRecord
	validates :name, uniqueness: true
end
