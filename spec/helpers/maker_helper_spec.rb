require 'rails_helper'

RSpec.describe MakerHelper, :type => :helper do
  
  context "Importaçao Dados Marcas" do
    it "Importação Marcas foi realizado?"  do
      initialize_maker
      makers= Make.getAllMakerDesc
      expect(makers).not_to be_empty
    end
  end
end