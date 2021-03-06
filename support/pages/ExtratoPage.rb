class ExtratoPage

    

    include Capybara::DSL

def ClicarExtrato()
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    within_frame('frameMenu') do
    find("#ssubmenu018", visible: false).click
    end
    end
    end
    

def PreencherDados(coop, conta, periodo, tipo, txt)  
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    page.driver.browser.switch_to.default_content
    page.driver.browser.switch_to.frame 2  
    page.driver.browser.switch_to.frame 1
    find("input[id=codigoCooperativaConta]").set coop
    find("input[id=numeroConta]").set conta
    find(".icon-actions-check").click
    find(periodo).click
    find(tipo).click
    click_button "Confirmar"
    page.has_text? (txt)
    end
    end
    end
           
   