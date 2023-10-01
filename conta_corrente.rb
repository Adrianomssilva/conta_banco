class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(nome, saldo, limite)
    super(nome, saldo)
    @limite = limite
  end

  

end