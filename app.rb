require_relative 'lib/adivinhar_numero'

system("cls")

puts " "
puts "\t\t\t --- JOGO DE ADIVINHAÇÃO ---"

File.open(File.expand_path('../images/ascii.txt', __FILE__), 'r') do |arquivo|
    while linha = arquivo.gets
        puts linha
    end
   end  

puts " "   
puts "\t\t\t1 - para adivinhar numeros"
puts "\t\t\t2 - Sair"
print "\t\t\tQual a sua escolha? = "
escolha = gets.chomp.to_i

system("cls")
cont = 0

case escolha
  when 1
    jogo = AdivinhaNumero.new
    while jogo.venceu == false do
        puts "digite um numero"
        numero = gets.to_i
        system("cls")
        puts jogo.tentar_advinhar(numero) + " -> #{numero}"
        cont = cont + 1
    end
    puts "Numero de tentativas < #{cont} >"
  when 2
    system("exit")
    else
        puts "Escolha invalida!"
    end
    

   
  