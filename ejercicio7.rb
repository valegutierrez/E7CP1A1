inventario = {"Notebook": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
options = 0
while options != 7
  puts 'Ingresa una opción del 1 al 7'
  puts 'Opción 1: Agregar un item'
  puts 'Opción 2: Eliminar un item'
  puts 'Opción 3: Actualizar un item'
  puts 'Opción 4: Ver el stock total'
  puts 'Opción 5: Ver item de mayor stock'
  puts 'Opción 6: Consultar disponibilidad item'
  puts 'Opción 7: Salir'
  options = gets.chomp.to_i
  case options
  when 1
    puts 'Ingresa un item y su stock, con una coma entremedio'
    new_item = gets.chomp.split(', ')
    inventario[new_item[0].to_sym] = new_item[1].to_i
  when 2
    puts 'Ingresa el nombre de un item para borrarlo'
    item_todelete = gets.chomp.to_sym
    inventario.delete(item_todelete)
  when 3
    puts 'Ingresa el nombre del item a actualizar'
    item_toupdate = gets.chomp.to_sym
    puts 'Ingresa el stock actualizado del item'
    stock_toupdate = gets.chomp.to_i
    inventario[item_toupdate] = stock_toupdate
  when 4
    x = 0
    inventario.each{ |k, v| x += v }
    puts "El stock total de items es #{x}"
  when 5
    max_stock = inventario.max_by{ |k, v| v}
    puts "El item con mayor stock es #{max_stock[0]}: #{max_stock[1]}"
  when 6
    puts 'Ingresa el nombre del item a consultar'
    item_tosearch = gets.chomp.to_sym
    if inventario.key?(item_tosearch)
      puts 'Sí, el item existe'
    else
      puts 'No, el item no existe'
    end
  end
end
