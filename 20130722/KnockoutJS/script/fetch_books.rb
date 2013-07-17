
require 'amazon/aws/search'

include Amazon::AWS
include Amazon::AWS::Search

def amazon_config
	config = Amazon::Config.new
	config['key_id'] = 'AKIAJQVVOXJOHK2NPGUQ'
	config['secret_key_id'] = '6R0ozXoFJXdQ1BposxrO4uBHDTcDhWAayZ5jkoXa'
	config['cache'] = false
	config['locale'] = 'us'
	config['encoding'] = 'UTF-8'
	config
end

associate_id='inno0a5-20'
req = Request.new('AKIAJQVVOXJOHK2NPGUQ', associate_id, 'us', false)
req.instance_variable_set("@config", amazon_config)
is = ItemSearch.new('Books', {'Keywords' => 'Ruby Programming'})
rg = ResponseGroup.new('Images,ItemAttributes,EditorialReview,Reviews,Similarities')


req.search( is, rg, 10 ).each do |resp|

	items = resp.item_search_response[0].items[0].item

	printf( "Page has %d items.\n", items.size )

	items.each do |item|
		attribs = item.item_attributes[0]

		puts '%s %s' % [ attribs.title, ( attribs.format ? "(#{attribs.format})" : '' ) ]

		puts 'Small Image: %s (%d x %d)' % [item.small_image.url, item.small_image.width, item.small_image.height] if item.small_image
		puts 'Medium Image: %s (%d x %d)' % [item.medium_image.url, item.medium_image.width, item.medium_image.height] if item.medium_image
		puts 'Large Image: %s (%d x %d)' % [item.medium_image.url, item.large_image.width, item.large_image.height] if item.large_image
		puts '%s (%s)' % [ attribs.manufacturer, attribs.binding ]
		puts 'Release date: %s' % [ attribs.release_date ]
		puts attribs.list_price[0].formatted_price if attribs.list_price
		puts 'Author(s): %s' % attribs.author.join(', ') if attribs.author
		if item.editorial_reviews
			puts item.editorial_reviews[0].editorial_review[0].content
		end
		puts
	end
end
