require_relative '../support/pages/ExtratoPage'

describe "Cenários de extrato" do 
  
   
     
it "Extrato de conta corrente semanal", :ex do
    @Extrato.ClicarExtrato
    @Extrato.PreencherDados(1075,19,'tr:nth-child(1) #periodoExtrato','tr:nth-child(5) #tipoExtrato',"EXTRATO CONSOLIDADO DE CONTA CORRENTE")
    end

  
it "Extrato de conta corrente mensal", :ex do
    @Extrato.ClicarExtrato
    @Extrato.PreencherDados(1075,19,'tr:nth-child(2) #periodoExtrato','tr:nth-child(5) #tipoExtrato',"EXTRATO CONSOLIDADO DE CONTA CORRENTE")
    end
    
it "Extrato de poupança semanal", :ex do
    @Extrato.ClicarExtrato
    @Extrato.PreencherDados(1075,19,'tr:nth-child(1) #periodoExtrato','tr:nth-child(10) #tipoExtrato',"EXTRATO CONSOLIDADO DE POUPANÇA")
    end
    

it "Extrato de poupança semanal", :ex do
    @Extrato.ClicarExtrato
    @Extrato.PreencherDados(1075,19,'tr:nth-child(2) #periodoExtrato','tr:nth-child(10) #tipoExtrato',"EXTRATO CONSOLIDADO DE POUPANÇA")
    end
    end