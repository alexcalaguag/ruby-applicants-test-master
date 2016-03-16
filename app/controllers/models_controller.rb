class ModelsController < ApplicationController
  include ModelHelper

  def index
    initialize_models(params[:webmotors_id]);
    @models = Model.getModelsByMakeId(params[:webmotors_id])
  end
end
