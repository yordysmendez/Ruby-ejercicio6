# Crear un aplicación en Ruby que permita almacenar la información de contacto de
# varios usuarios, los datos requeridos serán el nombre y la edad.
# En caso de que los usuarios sean menores de 18 años, deberán almacenarse por separado.
# Una vez finalizado el ingreso se deberá mostrar ambos listados por pantalla.

# Leer y almacenar los datos ingresados


listado_mayores = []
listado_menores = []

loop do
  datos = {}
  print "Ingrese su nombre: "
  nombre = gets.chomp

  datos[:nombre] = nombre
  print "Ingrese su edad: "
  edad = gets.chomp.to_i
  datos[:edad] = edad

  # Clasificación de usuarios en dos listas por edad
  
  if datos[:edad] >= 18
    listado_mayores << datos
  else
    listado_menores << datos
  end
  print "Desea seguir ingresando datos?(si/no): "
  res = gets.chomp
  break if res == 'no'
end

# listados

puts "Listado de personas mayores de 18 años"
p listado_mayores
puts "Listado de personas menores de 18 años"
p listado_menores




# Array de hashes

# [
#   {:nombre=>"Fernando", :edad=>25},
#   {:nombre=>"Juana", :edad=>15}
# ]

# Viendolo en excel

#  nombre  |  edad
#------------------
# Fernando |   25
#   Juana  |   15