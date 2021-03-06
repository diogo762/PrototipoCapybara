require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require_relative '../support/pages/LoginPage'




RSpec.configure do |config|

  config.before(:each) do
 
      #visit "http://contexto-teste.cresolconfederacao.com.br:8080/colmeia/"
      visit "http://homologacao.cresolconfederacao.com.br/colmeia/"
      @Transferencia = TransferenciaPage.new
      @Saldo = SaldoPage.new
      @Extrato = ExtratoPage.new
      @login = LoginPage.new
      @login.Login('VICTOR','ferroada',1)
      
  end
 
  config.expect_with :rspec do |expectations|
 
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    
  end


  config.mock_with :rspec do |mocks|
  
    mocks.verify_partial_doubles = true
  end

  
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara:: DSL

end

Capybara.configure do |config|
#config.default_driver = :selenium_chrome
config.default_driver = :selenium
config.default_max_wait_time = 60





end
