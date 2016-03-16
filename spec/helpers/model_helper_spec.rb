require 'rails_helper'

RSpec.describe ModelHelper, :type => :helper do
  context "Importaçao Dados Modelo" do
   it "Importação Modelo foi realizado?" do
 	  makeId = 4;
	  Make.create(:id => makeId,:webmotors_id => makeId)
 	  initialize_models(makeId)
	  models = Model.getModelsByMakeId(makeId)
      expect(models).not_to be_empty
    end
  end

end