#Desafío Cartas

class Carta
  attr_accessor :numero, :pinta
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end
end

opcion = 0

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
pinta = ["Córazon", "Diamante", "Picas", "Trebol"]

while opcion != 5

  puts "Menú"
  puts "\n"
  puts "Ingresa una de las siguientes opciones:
  1) jugar: Generar un archivo con 5 cartas al azar
  2) guardar: Guardar las cartas en un archivo
  3) mostrar: Mostrar las 5 cartas en pantalla
  4) leer: Cargar las cartas desde archivo
  5) salir"
  puts "\n"

  opcion = gets.chomp

  case opcion
  when "jugar"
    arr_cartas = []
    5.times do |newcarta|
      arr_cartas << Carta.new(numeros.sample, pinta.sample)
    end
    puts "\n"
    puts "5 Cartas fueron generadas correctamente"
    puts "\n"

  when "guardar"
    new_file = File.open("cartas.txt", "a") { |add|  
      add.puts arr_cartas
    }
    puts "\n"
    puts "Archivo generado correctamente (Ver en carpeta)"
    puts "\n"

  when "mostrar"
    puts "\n"
    puts "Las 5 cartas al azar son:"
    arr_cartas.each do |element|
      puts "\n #{element.numero} de #{element.pinta}"
    end 
    puts "\n"

  when "leer"
    puts "\n"
    puts "Las 5 cartas del archivo son:"
    File.open("cartas.txt", "r").each_line do |contenido|
      puts "\n #{contenido} \n"
    end

  when "salir"
    exit   
  end

end





