class Book
	attr_accessor :id, :title, :category_id, :description, :authors

	def medium_image
		"http://fpoimg.com/100x150?text=#{title}"
	end

	def large_image
		"http://fpoimg.com/300x450?text=#{title}"
	end

	def initialize(attrs={})
		attrs.each_pair do |key, val|
			send("#{key}=", val)
		end
	end

	def as_json(options={})
		json = super

		json[:medium_image] = medium_image
		json[:large_image] = large_image

		json
	end
end