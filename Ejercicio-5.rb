#Ejercicio 5:
#Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
#Crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
#Crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
#Instanciar un Rectangulo y un Cuadrado.
#Imprimir el área y perímetro de los objetos instanciados utilizando los métodos implementados.

class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts " el largo del rectangulo es #{@largo} y su ancho es #{@ancho}"
  end

  def perimetro
      puts " el perimetro es #{ @largo*2 + @ancho*2 }"
  end

  def area
     puts " el area es #{@largo * @ancho}"
  end
end


class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts " los lados del cuadro es #{@lados}"
  end

  def perimetro
      puts " el perimetro es de #{@lado*4}"
  end

  def area
     puts " el area es #{@lado * @lado}"
  end
end

rectangulo = Rectangulo.new(8, 4)
puts rectangulo.lados
puts rectangulo.area
puts rectangulo.perimetro


cuadrado = Cuadrado.new(32)
puts cuadrado.lados
puts cuadrado.area
puts cuadrado.perimetro
