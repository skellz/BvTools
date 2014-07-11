require 'csv'

products = {}

CSV.foreach('omron_feed.csv', headers: true) do |row|
	external_id = row['ExternalID']
	name = row['Name']
	category_external_id = row['CategoryExternalId']
	pdp_url = row['ProductPageUrl']
	image_url = row['ImageUrl']
	upc = row['upc']

	products["#{name}"] = ["#{category_external_id}", "#{pdp_url}", "#{image_url}", "#{external_id}"]
end

puts products