require 'rails_helper'

RSpec.describe MakeHelper, :type => :helper do
  
  context "Importaçao Dados Marcas" do
    it "Importação Marcas foi realizado?"  do
      initialize_make
      makes= Make.getAllMakeDesc
      expect(makes).not_to be_empty
    end
  end
end