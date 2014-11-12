class Author < ActiveRecord::Base
	validates :firstname, :surname, presence: true
	has_many :theses

	def full_name
		"#{firstname} #{surname}"
	end
end
