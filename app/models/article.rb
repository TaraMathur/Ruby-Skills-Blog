class Article < ApplicationRecord
#	validates :title, presence: true, length: {minimum: 2}
#  	validates :text, presence: true, length: {minimum: 10}

	belongs_to :user

end
