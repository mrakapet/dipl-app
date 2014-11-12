class Faculty < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true
	has_many :theses
end
