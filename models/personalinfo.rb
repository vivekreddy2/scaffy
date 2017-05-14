class Personalinfo < ApplicationRecord
	validates :name, presence: true, length: {minimum: 4}
	validates_format_of :emailid,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :phoneno, numericality: true, length: {minimum: 10, maximum:15}
	
end
