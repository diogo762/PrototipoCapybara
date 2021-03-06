require_relative '../support/pages/LoginPage'




describe "Cenários de login" do 
  
  #before(:each) do
    #visit "http://contexto-teste.cresolconfederacao.com.br:8080/colmeia/"
    #visit "http://homologacao.cresolconfederacao.com.br/colmeia/"
   
     

 #end


 it "Login com sucesso", :pass do

  #@login.Login('VICTOR','ferroada')
  #@login.validarLogin('VICTOR')
  
end

it " Senha incorreta", :fail do

  @login.Login('VICTOR','vespa')
  @login.mensagemErro('O usuário ou a senha estão incorretos.')

end

end