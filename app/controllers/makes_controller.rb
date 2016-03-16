class MakesController < ApplicationController
  include MakeHelper

  def index
    initialize_make
    @makes= Make.all.order(name: :asc)
  end

  def search
    param_make =params[:make]
    param_webmotors_id = param_make[:webmotors_id]
    if param_webmotors_id.empty?
      redirect_to(controller: 'makes', message: t('pleaseSelectModel'))
    else
       redirect_to(controller: 'models', webmotors_id: param_webmotors_id)
    end
   end


end
