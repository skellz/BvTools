class OmronFeedGenerator

	def initialize
		@products = {"Omron 3 Series Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/3-series-upper-arm-blood-pressure-monitor-bp710n/", "http://omronhealthcare.com/wp-content/uploads/bp710n-front-200x115.jpg", "0 73796271046"], "Omron 5 Series Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/5-series-upper-arm-blood-pressure-monitor-bp742n/", "http://omronhealthcare.com/wp-content/uploads/bp742n-angle-200x115.jpg", "0 73796274245"], "Omron 7 Series Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/7-series-upper-arm-blood-pressure-monitor-bp760n/", "http://omronhealthcare.com/wp-content/uploads/bp760n-angle-200x115.jpg", "0 73796276041"], "Omron 10 Series Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/10-series-upper-arm-blood-pressure-monitor-bp785n/", "http://omronhealthcare.com/wp-content/uploads/bp761-angle-200x115.jpg", "0 73796278540"], "Omron 10+ Series Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/10-series-plus-upper-arm-blood-pressure-monitor-bp791it/", "http://omronhealthcare.com/wp-content/uploads/bp791it-front-200x115.jpg", "0 73796791926"], "Omron 3 Series Wrist Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/3-series-wrist-blood-pressure-monitor-bp629/", "http://omronhealthcare.com/wp-content/uploads/bp629-front-200x115.jpg", "0 73796266295"], "Omron 7 Series Wrist Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/7-series-wrist-blood-pressure-monitor-bp652/", "http://omronhealthcare.com/wp-content/uploads/bp652-front-200x115.jpg", "0 73796266523"], "Omron 7 Series Connected Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/7-series-upper-arm-blood-pressure-monitor-plus-bluetooth-smart-bp761/", "http://omronhealthcare.com/wp-content/uploads/bp785n-front-200x115.jpg", "0 73796267612"], "Omron 10 Series Connected Upper Arm Blood Pressure Monitor"=>["blood-pressure-monitors", "http://omronhealthcare.com/products/10-series-upper-arm-blood-pressure-monitor-plus-bluetooth-smart-bp786/", "http://omronhealthcare.com/wp-content/uploads/bp786-angle-200x115.jpg", "0 73796267865"], "Omron electroTHERAPY TENS Pain Relief Unit"=>["electrotherapy-tens-units", "http://omronhealthcare.com/products/electrotherapy-tens-pain-relief-unit-pm3030/", "http://omronhealthcare.com/wp-content/uploads/pm3030-front-200x115.jpg", "0 73796633035"], "Omron electroTHERAPY TENS Pain Relief Pro Unit"=>["electrotherapy-tens-units", "http://omronhealthcare.com/products/electrotherapy-tens-pain-relief-pro-unit-pm3031/", "http://omronhealthcare.com/wp-content/uploads/pm3031-front-200x115.jpg", "0 73796330316"], "Omron electroTHERAPY TENS Standard Pad"=>["electrotherapy-tens-accessories", "http://omronhealthcare.com/products/long-life-pads/", "http://omronhealthcare.com/wp-content/uploads/pmllpad-duo-200x115.jpg", "0 73796226145"], "Omron electroTHERAPY TENS Large Pad"=>["electrotherapy-tens-accessories", "http://omronhealthcare.com/products/electrotherapy-tens-long-life-pads-large-pmllpad-l/", "http://omronhealthcare.com/wp-content/uploads/pmllpadl-front-200x115.jpg", "0 73796261429"], "Omron Heart Rate Monitor"=>["heart-rate-monitors", "http://omronhealthcare.com/products/strap-free-heart-rate-monitor-hr210/", "http://omronhealthcare.com/wp-content/uploads/hr210-front-200x115.jpg", "0 73796882105"], "Omron Strapless Heart Rate Monitor"=>["heart-rate-monitors", "http://omronhealthcare.com/products/heart-rate-monitor-chest-strap-hr310/", "http://omronhealthcare.com/wp-content/uploads/hr310-front-200x115.jpg", "0 73796883102"], "Omron Alvita Pedometer"=>["pedometers", "http://omronhealthcare.com/products/alvita-tri-axis-pedometer-two-modes-hj320/", "http://omronhealthcare.com/wp-content/uploads/hj320-front-200x115.jpg", "0 73796801601"], "Omron Alvita Optimized Pedometer"=>["pedometers", "http://omronhealthcare.com/products/alvita-optimized-tri-axis-pedometer-four-modes-hj321/", "http://omronhealthcare.com/wp-content/uploads/hj321-front-200x115.jpg", "0 73796801618"], "Omron Alvita USB Pedometer"=>["pedometers", "http://omronhealthcare.com/products/tri-axis-usb-pedometer-five-modes-web-hj323u/", "http://omronhealthcare.com/wp-content/uploads/hj323u-front-200x115.jpg", "0 73796032319"], "Omron Tri-Axis USB Pedometer"=>["pedometers", "http://omronhealthcare.com/products/tri-axis-usb-pedometer-five-modes-web-hj324u/", "http://omronhealthcare.com/wp-content/uploads/hj324-front1-200x115.jpg", "0 73796032418"], "Omron Fat Loss Monitor With Scale"=>["body-composition-monitor-scale", "http://omronhealthcare.com/products/fat-loss-monitor-with-scale-hbf-400/", "http://omronhealthcare.com/wp-content/uploads/hbf400-angle-200x115.jpg", "0 73796826406"], "Omron Fat Loss Monitor"=>["body-composition-monitor-scale", "http://omronhealthcare.com/products/fat-loss-monitor-hbf306c/", "http://omronhealthcare.com/wp-content/uploads/hbf306c-front-200x115.jpg", "0 73796306304"], "Omron Body Composition Monitor and Scale With Five Fitness Indicators"=>["body-composition-monitor-scale", "http://omronhealthcare.com/products/body-composition-scale-five-indicators-hbf510w/", "http://omronhealthcare.com/wp-content/uploads/hbf510-angle-200x115.jpg", "0 73796265106"], "Omron Body Composition Monitor and Scale With Seven Fitness Indicators"=>["body-composition-monitor-scale", "http://omronhealthcare.com/products/body-composition-monitor-scale-seven-indicators-hbf516b/", "http://omronhealthcare.com/wp-content/uploads/hbf516b-angle-200x115.jpg", "0 73796265168"], "Omron Large Blood Pressure Cuff"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/large-cuff-h003d/", "http://omronhealthcare.com/wp-content/uploads/h003d-angle-200x115.jpg", "0 73796800345"], "Omron Small Blood Pressure Cuff"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/small-cuff-h003ds/", "http://omronhealthcare.com/wp-content/uploads/h003ds-angle-200x115.jpg", "0 73796800369"], "Omron ComFit Blood Pressure Cuff"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/comfit-cuff-hcl22/", "http://omronhealthcare.com/wp-content/uploads/hcl22-angle-200x115.jpg", "0 73796832223"], "Omron Standard Blood Pressure Cuff"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/standard-cuff-hcr24/", "http://omronhealthcare.com/wp-content/uploads/hcr24-angle-200x115.jpg", "0 73796838249"], "Omron Blood Pressure AC Adapter"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/acadapter-hemadtpw5/", "http://omronhealthcare.com/wp-content/uploads/hemadptw5-front-200x115.jpg", "0 73796146054"], "Omron Printer Paper for HEM705CP"=>["blood-pressure-monitor-accessories", "http://omronhealthcare.com/products/printerpaper-0090trp/", "http://omronhealthcare.com/wp-content/uploads/0090trp-front-200x115.jpg", "0 73796009021"], "Omron Pedometer Clip and Strap"=>["pedometer-accessories", "http://omronhealthcare.com/products/pedometer-strap-clip-ped-stcls/", "http://omronhealthcare.com/wp-content/uploads/pedstcls-front-200x115.jpg", "0 73796903299"], "Omron Activity Monitor"=>["activity-monitor", "http://omronhealthcare.com/products/activity-monitor-hja312/", "http://omronhealthcare.com/wp-content/uploads/hja312-front-200x115.jpg", "0 73796803124"], "Omron NFC Trap For Activity Monitor"=>["activity-monitor-accessory", "http://omronhealthcare.com/products/nfc-communication-tray-hhxit3z/", "http://omronhealthcare.com/wp-content/uploads/hhxit3z-front-200x115.jpg", "0 73796463083"], "Omron Alvita Ultimate Pedometer"=>["pedometers", "http://omronhealthcare.com/products/alvita-ultimate-pedometer-hj325/", "http://omronhealthcare.com/wp-content/uploads/hj325-front-200x115.jpg", "0 73796803254"], "Omron Digital Scale"=>["body-composition-monitor-scale", "http://omronhealthcare.com/products/digital-scale-sc100/", "http://omronhealthcare.com/wp-content/uploads/sc100-front-200x115.jpg", "0 73796931001"], "Omron Avita USB Pedometer"=>["pedometers", "http://omronhealthcare.com/products/alvita-usb-pedometer-hj322u/", "http://omronhealthcare.com/wp-content/uploads/hj322u-front-200x115.jpg", "0 73796032210"]}
    @categories = []
    @products.each do |k,v|
    	@categories << v[0]
    end
    @categories.uniq!

  end


	def get_input
		@input = gets.chomp.downcase
	end

	def build_name(input)
    "<Name>#{input.split(/[-_ ]/).map { |x| x.capitalize }.join(' ')}</Name>"
	end

	def build_externalid(input)
		"<ExternalId>#{input.downcase.gsub(' ', '_')}</ExternalId>"
	end

	def build_catergory_external_id(input)
  	"<CategoryExternalId>#{input.downcase.gsub(' ', '_')}</CategoryExternalId>"
  end

  def build_product_page_url(input)
    "<ProductPageUrl>#{input}</ProductPageUrl>"
	end

	def build_image_url(input)
    "<ImageUrl><![CDATA[#{input}]]></ImageUrl>"
  end

  def build_description(input)
		"<Description>#{input}</Description>"
	end

	def build_value(input)
		"<Value>#{input.downcase.gsub(' ', '_')}</Value>"
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

  def build_categories
  	puts "<Categories>"
  	@categories.each do |x|
  	 puts "<Category>"
  	 puts "#{build_externalid(x)}
  	 #{build_name(x)}
   </Category>\n"
    end
  	puts "</Categories>"
  end

  def build_sub_products(name, array)
  	"      <Product>
  		#{build_externalid(array[3])}
  		#{build_name(name)}
  		#{build_description(name)}
  		#{build_product_page_url(array[1])}
  		#{build_image_url(array[2])}
  		#{build_catergory_external_id(array[0])}
  		<Attributes>
       <Attribute id=\"BV_FE_FAMILY\">
         <Value>#{array[0]}</Value>
       </Attribute>

      </Attributes>
     </Product>\n"
  end

  def build_sub_products_with_expand(name, array)
  	"      <Product>
  		#{build_externalid(array[3])}
  		#{build_name(name)}
  		#{build_description(name)}
  		#{build_product_page_url(array[1])}
  		#{build_image_url(array[2])}
  		#{build_catergory_external_id(array[0])}
  		<Attributes>
       <Attribute id=\"BV_FE_FAMILY\">
         <Value>#{array[0]}</Value>
       </Attribute>
		   <Attribute id=\"BV_FE_EXPAND\">
         <Value>BV_FE_FAMILY:#{array[0]}</Value>
       </Attribute>
      </Attributes>
     </Product>\n"
   end

   def build_products
  	puts "<Products>"
  	@products.each do |k,v|
  		puts build_sub_products(k,v) 
  	end
  	puts "</Products>"
  end
end

# x = OmronFeedGenerator.new
# x.build_brands
# x.build_categories
# x.build_products

