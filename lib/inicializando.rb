require 'tty-spinner'


class Inicializacao
    def self.inicializando

        spinner = TTY::Spinner.new
        spinner = TTY::Spinner.new("[:spinner] Carregando ...", format: :pulse_2)        
        spinner.auto_spin 
        sleep(5)
        spinner.stop('Pronto!')


        print "Inicializando."
        5.times do |i|
            sleep 0.5
            print "."
        end
        sleep 1
        puts "."
    end
end