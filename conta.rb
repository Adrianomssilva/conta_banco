class Conta
   attr_accessor :nome, :saldo
   @saldo = 0 
   def initialize ( nome, saldo)
      @nome = nome 
      @saldo = saldo
   end

   def saldo_conta
   puts "saldo da conta é #{@saldo}"
      
   end

   def deposito (valor_dep)
     @saldo += valor_dep
   end

   def debitar (valor_deb)
      @saldo -=valor_deb
   end

   def trans (conta_destino, valor)
      if @saldo >= valor
         debitar(valor)
         conta_destino.deposito(valor)
      else 
         puts "Saldo insuficiente"
      end
   end
end

