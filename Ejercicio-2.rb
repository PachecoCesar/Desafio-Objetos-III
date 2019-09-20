#Ejercicio 2: Sintaxis
#Corregir los errores de sintaxis para que las últimas cuatro líneas se ejecuten de manera correcta.

class MiClase
attr_accessor :name
def initialize(name)
@name = name
end

def self.saludar
"Hola! Soy la clase #{@name}"
end

end
c = MiClase.new('Clase Uno')
puts c.name
c.name = 'MiClase'
puts MiClase.saludar
