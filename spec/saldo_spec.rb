require_relative '../support/pages/SaldoPage'

describe "Cenários de saldo" do 
  
   
it "Saldo de conta corrente", :s do
    @Saldo.ClicarSaldo
    @Saldo.PreencherDados(1075,19,'tr:nth-child(1) #tipoSaldo',"SALDO DE CONTA CORRENTE")
    end


it "Saldo de poupanca", :s do
    @Saldo.ClicarSaldo
    @Saldo.PreencherDados(1075,19,'tr:nth-child(5) #tipoSaldo',"SALDO DE POUPANÇA")
    end
    end