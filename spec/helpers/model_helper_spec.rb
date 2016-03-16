require 'rails_helper'

RSpec.describe ModelHelper, :type => :helper do
  context "Importaçao Dados Modelo" do
   it "Importação Modelo foi realizado?" do
 	  makerId = 4;
	  Make.create(:id => makerId,:webmotors_id => makerId)
 	  initialize_models(makerId)
	  models = Model.getModelsByMakerId(makerId)
      expect(models).not_to be_empty
    end
  end

end