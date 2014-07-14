require 'csv'
require 'pry'

class CsvFeedConverter

	def initialize
		@products = {}
    @categories = []
    binding.pry
	end

	def create_categories
		@products.each do |k,v|
    	@categories << v[0]
    end
    @categories.uniq!
  end

  def read_csv
		CSV.foreach('omron_feed.csv', headers: true) do |row|
			external_id = row['ExternalID']
			name = row['Name']
			category_external_id = row['CategoryExternalId']
			pdp_url = row['ProductPageUrl']
			image_url = row['ImageUrl']
			upc = row['upc']

			@products["#{name}"] = ["#{category_external_id}", "#{pdp_url}", "#{image_url}", "#{external_id}"]
		end
	end
end

CsvFeedConverter.new