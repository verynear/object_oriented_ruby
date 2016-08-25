require './sandwiches.rb'
require './perishibles.rb'

blt=StoreFront::Sandwich.new({:bread => "rye",
    :meat => "bacon",
    :condiment => "mayo"})
ham=StoreFront::Sandwich.new({bread: "wheat",
     meat: "ham", 
     condiment: "mustard"})
meatball=StoreFront::Sandwich.new({bread: "italian",
           meat: "meatballs",
           condiment: "marinara"})

roast_beef = StoreFront::Sandwich.new({meat: "roast beef", bread: "white", condiment: "au jus"})

egg_salad = StoreFront::Perishables.new({meat: "eggs", bread: "sourdough", condiment: "mayo", shelflife: 3})

puts roast_beef.meat

puts roast_beef.bread

puts roast_beef.condiment

p egg_salad