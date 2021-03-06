class TransferenciaPage

    

    include Capybara::DSL

def ClicarTransferencias()
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    within_frame('frameMenu') do
    find("#ssubmenu017", visible: false).click
    end
    end
    end
    

def PreencherDados(coop, conta, tipo, operacao, coopdestino, contadestino, valor, txt)  
    within_window -> { page.title == 'Colmeia - Sistema de Gestão de Cooperativas de Crédito'} do
    page.driver.browser.switch_to.default_content
    page.driver.browser.switch_to.frame 2  
    page.driver.browser.switch_to.frame 1
    find("input[id=codigoCooperativaConta]").set coop
    find("input[id=numeroConta]").set conta
    find(".icon-actions-check").click
    find(tipo).click
    find(operacao).click
    find("input[id=codigoCooperativaContaDestino]").set coopdestino
    find("input[id=numeroContaDestino]").set contadestino
    find(".form_tabela:nth-child(10) .icon-actions-check").click
    find("tr:nth-child(1) > .form_text:nth-child(2) > input").set valor
    find("tr:nth-child(2) > .form_text > input").set "AUTOMACAO"
    click_button "Confirmar"
    page.has_text? (txt)
    end
    end
    end