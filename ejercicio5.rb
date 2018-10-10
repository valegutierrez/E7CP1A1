meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
h = meses.zip(ventas).to_h
h_inverted = h.invert
max = h_inverted.max_by{ |key, value| key }
puts "El mes de mayor ventas es #{max[1]} con #{max[0]} ventas"
