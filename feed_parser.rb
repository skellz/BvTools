class FeedParser
	require 'nokogiri'
	require 'pry'
	def initialize
		@file = ''
		@parsed_file = {}
	end

	def get_file
		puts 'Please enter file name'
		@file = gets.chomp.to_s
	end

	def parse_file
		file = File.open(@file)
		@parsed_file = Nokogiri::XML::Document.parse(file)
	end

	def check_file
		unless File.exist?(@file)
			puts 'Invalid file path'
			get_file
			check_file
		end
	end

	def set_products
		@products = @parsed_file.children[0].children[5].children
	end

	def show_invalid_upcs
		#binding.pry
		@products.each_with_index do |x, y|
			if y.odd?
				#binding.pry
				upc = x.children[15].children[1].children[0].to_s
				product = x.children[5].children[0].to_s
				ext_id = x.children[1].children[0].to_s
				puts "Product: #{product}  External Id: #{ext_id}  UPC: #{upc}" if (upc.length != 6 && upc.length != 12)
			end
		end
	end
end

x = FeedParser.new
x.get_file
x.check_file
x.parse_file
x.set_products
x.show_invalid_upcs
