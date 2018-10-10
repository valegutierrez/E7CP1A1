restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }
most_expensive = restaurant_menu.max_by{ |key, value| value}
puts "El plato más caro es #{most_expensive[0]}"
cheapest = restaurant_menu.min_by{ |key, value| value}
puts "El plato más barato es #{cheapest[0]}"
def prom_dishes(menu) 
  x = 0
  menu.each{ |key, value| x += value }
  puts "El promedio del valor de los platos es #{x/menu.length}"
end
prom_dishes(restaurant_menu)
only_names = restaurant_menu.keys.to_a
print only_names
only_prices = restaurant_menu.values.to_a
print only_prices
def include_iva(menu)
  with_iva = menu.map{ |k, v| v * 1.19 }
  puts "\nCon IVA incluído los precios quedan respectivamente #{with_iva}"
end
include_iva(restaurant_menu)
def find_2words(menu)
  x = menu.select{ |k, v| k.include? ' '}
  with_discount = x.map{ |k, v| v - (v * 0.01 * 20) }
  puts "Con descuento incluído el precio queda en #{with_discount}"
end
find_2words(restaurant_menu)
