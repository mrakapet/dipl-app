class Thesis < ActiveRecord::Base
	validates :name, :abstract, presence: true
	belongs_to :author
	belongs_to :faculty
	accepts_nested_attributes_for :author
end
