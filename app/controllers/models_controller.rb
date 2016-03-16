class ModelsController < ApplicationController
  include ModelHelper

  def index
    initialize_models(params[:webmotors_id]);
    make = Make.where(webmotors_id: params[:webmotors_id])[0] 
    @models = Model.where(make_id: make.id).order(name: :asc)
  end

 
end
