class ApplicationController < ActionController::Base
	before_filter :load_categories
	protect_from_forgery

	def load_categories
		@categories = Category.all.map do |category|
			{
				id: category.id,
				name: category.name
			}
		end
	end
end
