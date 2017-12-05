require_relative 'inicializando.rb'
require_relative 'sortear_numero.rb'

class AdivinhaNumero
    attr_reader :numero
    attr_reader :venceu
    def initialize
       Inicializacao.inicializando 
       @numero = SortearNumero.sortear
       @venceu = false
    end
     
    def tentar_advinhar(numero = 0)
     if numero == @numero
       @venceu = true
       return "vc VENCEU!!!"
     elsif numero > @numero
       return "numero informado muito alto"
     else
       return "numero informado muito baixo"
     end
    end
   end