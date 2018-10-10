inventario = {"Notebook": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
puts 'Ingresa una opción del 1 al 4'
options = gets.chomp.to_i
while options >= 8 || options <= 0
  puts 'Ingresa una opción del 1 al 4'
  options = gets.chomp.to_i
end
case options
when 1
  puts 'Ingresa un item y su stock, con una coma entremedio'
	new_item = gets.chomp.split(', ')
	inventario[new_item[0].to_sym] = new_item[1].to_i
	print inventario
when 2
	puts 'Ingresa el nombre de un item para borrarlo'
	item_todelete = gets.chomp.to_sym
	inventario.delete(item_todelete)
	print inventario
when 3
	
# when 4
# when 5
# when 6
# when 7
else
	puts 'La opción no es válida'
end
