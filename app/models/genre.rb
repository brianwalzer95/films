class Genre < ActiveRecord::Base
	has_many :movies, dependent: :destroy #if i delete a genre it will delete the movie inside the genre
	
	validates :name, presence: true#same as not null
	validates :name, uniqueness: true 
end
