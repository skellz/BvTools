class FeedGenerator
	def initialize
		@category = []
	end

	def get_input
		@input = gets.chomp.downcase
	end

	def build_name(input)
		"<Name>#{input}</Name>"
	end

	def build_externalid(input)
		"<ExternalId>#{input}</ExternalId>"
	end

  def build_catergory_external_id(input)
  	"<CategoryExternalId>#{input}</CategoryExternalId>"
  end

	def build_product_page_url
		"<ProductPageUrl>http://www.safeco.com/insurance-choices</ProductPageUrl>"
	end

	def build_image_url
		"<ImageUrl><![CDATA[http://www.safeco.com/omapps/BlobServer?blobkey=id&blobwhere=1240178989903&blobcol=urldata&blobtable=MungoBlobs]]></ImageUrl>"
	end

	def build_description(input)
		"<Description>#{input}</Description>"
	end

	def build_value(input)
		"<Value>#{input}</Value>"
	end

  def build_brands
  	puts 'Enter Brand name:'
  	get_input

  	puts "    <Brands>
  	  <Brand>
  		  #{build_externalid(@input)}
  		  #{build_name(@input)}
  	  </Brand>
    </Brands>"
  end

  def get_categories
  	puts "Enter Category name('exit' to exit):"
  	get_input
  	if @input != 'exit'
  		@category << @input
  		get_categories
  	end
  end


  def build_categories
  	puts "<Categories>"
  	@category.each do |x|
  	 puts "<Category>"
  	 puts "#{build_externalid(x)}
  	 #{build_name(x)}
   </Category>\n"
    end
  	puts "</Categories>"
  end

  def build_sub_products_with_expand(input)
  	"      <Product>
  		#{build_externalid(input)}
  		#{build_name(input)}
  		#{build_description(input)}
  		#{build_product_page_url}
  		#{build_image_url}
  		#{build_catergory_external_id(input)}
  		<Attributes>
       <Attribute id=\"BV_FE_FAMILY\">
         <Value>#{input}</Value>
       </Attribute>
		   <Attribute id=\"BV_FE_EXPAND\">
         <Value>BV_FE_FAMILY:#{input}</Value>
       </Attribute>
      </Attributes>
     </Product>\n"
   end

  def build_sub_products(input)
  	"      <Product>
  		#{build_externalid(input)}
  		#{build_name(input)}
  		#{build_description(input)}
  		#{build_product_page_url}
  		#{build_image_url}
  		#{build_catergory_external_id(input)}
  		<Attributes>
       <Attribute id=\"BV_FE_FAMILY\">
         <Value>#{input.split('-')[0]}</Value>
       </Attribute>
      </Attributes>
     </Product>\n"
  end

  def build_products
  	puts "<Products>"
  	@category.each do |x|
  		puts build_sub_products_with_expand(x)
  		puts build_sub_products("#{x}-purchase")
  		puts build_sub_products("#{x}-service")
  		puts build_sub_products("#{x}-claims")
  	end
  	puts "</Products>"
  end
end

x = FeedGenerator.new
x.get_categories
x.build_brands
x.build_categories
x.build_products