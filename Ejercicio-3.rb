#Ejercicio 3: Herencia
#Crear una clase Car que herede de Vehicle
#El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador de instancias de Car.
#Crear un método de clase en Car que devuelva la cantidad de instancias.
#El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.Instanciar 10 Cars.
#Consultar la cantidad de instancias generadas de Car mediante el método de clase creado #

class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end

end

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1

  end

  def self.mostrar_contador
    puts "He  contado #{@@contador} instancias"

  end
  def engine_start
    super
    puts 'El motor se ha encendido'
  end

end

modelos = %w[Hummer, Mercedes, Pegeout, Mahindra, Audi, Toyota]
años = [1980, 1981, 1982,1983,1990,1995,2000,2010]
auto = []

10.times do
  auto.push(Car.new(modelos.sample, años.sample))
end

puts Car.mostrar_contador
