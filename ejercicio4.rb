personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]
personas_hash = personas.zip(edades).to_h
print personas_hash
def promedio_edades(age)
  x = 0
  age.each{ |key, value| x += value }
  prom = x / age.length
  puts "\nEl promedio de las edades es #{prom}"
end
promedio_edades(personas_hash)
