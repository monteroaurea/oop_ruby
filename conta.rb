class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo

    def initialize (numero, saldo, titular)
        @numero = numero
        @saldo = saldo
        @titular = titular 
    end

    def sacar(valor)
        if saldo >= valor
        self.saldo -= valor
        else
            puts "Não há saldo o suficiente para sacar"
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        if self.saldo >= valor
        sacar(valor)
        conta_destino.depositar(valor)           
        else
            puts "Não há saldo suficiente para transferir"
        end
    end

end