# item1 = {item_name: 'Wrench', item_color: 'chrome', item_price: '9.99'}
# item2 = {:item_name => 'Hammer', :item_color => 'black', :item_price => '12.99'}
# item3 = {item_name: 'Saw', item_color: 'red', item_price: '15.99'}

class Item

	def initialize(input_options_hash)
		@item_name = input_options_hash[:item_name]
		@item_color = input_options_hash[:item_color]
		@item_price = input_options_hash[:item_price]
	end

	def item_name
     @first_name
    end

    def item_color
     @last_name
    end

    def item_price
      @item_price
    end

    def item_info
      puts "#{@item_name} is #{@item_color} and costs $#{@item_price} before tax."
    end
end

item1 = Item.new({item_name: 'Wrench', item_color: 'chrome', item_price: '9.99'})
item1.item_info
