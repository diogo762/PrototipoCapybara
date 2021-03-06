

class LoginPage 

include Capybara::DSL

  
def Login(usuario,senha,coop)
    within_window -> { page.title == 'Colmeia'} do
    find("input[id=CHAVE]").set usuario
    find("input[id=UNIDADETextBox]").set coop
    find("input[id=CHAVE_ENCRIPT]").set senha
    click_button "Enviar"
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    within_frame('frameMenu') do
    find(".button:nth-child(1)", visible: false).click
    end   
    end
    end
    end

def validarLogin(msgPass)
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    within_frame('frameCabecalho') do
    page.has_text? (msgPass)
    end
    end
    end

def mensagemErro(msgFail)
    page.has_text? (msgFail)
    end
    end