class ModelsController < ApplicationController
  include ModelHelper

  def index
    initialize_models(params[:webmotors_id]);
    @models = Model.getModelsByMakerId(params[:webmotors_id])
  end
end
