class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :articles, through: :taggings

	def show
  		@tag = Tag.find(params[:id])
	end
	
	private
	def to_s
    	name
  	end
end
