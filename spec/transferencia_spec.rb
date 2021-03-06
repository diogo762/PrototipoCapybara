require_relative '../support/pages/TransferenciaPage'

describe "Cenários de Transferencia" do 
  
it "Transferencia de conta corrente para conta corrente", :tr do
    @Transferencia.ClicarTransferencias
    @Transferencia.PreencherDados(1075,19,'td:nth-child(3) > #tipoTransferencia','tr:nth-child(5) #tipoOperacao',1075,27,5000,"DE CONTA CORRENTE PARA CONTA CORRENTE")
    end

it "Transferencia de conta corrente para conta poupanca", :tr do
    @Transferencia.ClicarTransferencias
    @Transferencia.PreencherDados(1075,19,'td:nth-child(3) > #tipoTransferencia','tr:nth-child(6) #tipoOperacao',1075,86320,5000,"DE CONTA CORRENTE PARA CONTA POUPANÇA")
    end

it "Transferencia de conta poupança para conta corrente", :tr do
    @Transferencia.ClicarTransferencias
    @Transferencia.PreencherDados(1075,19,'td:nth-child(3) > #tipoTransferencia','tr:nth-child(7) #tipoOperacao',1075,86320,5000,"DE CONTA POUPANÇA PARA CONTA CORRENTE")
    end

it "Transferencia de conta poupança para conta corrente", :tr do
    @Transferencia.ClicarTransferencias
    @Transferencia.PreencherDados(1075,19,'td:nth-child(3) > #tipoTransferencia','tr:nth-child(8) #tipoOperacao',1075,86320,5000,"DE CONTA POUPANÇA PARA CONTA POUPANÇA")
    end
    end


    #tr:nth-child(8) #tipoOperacao