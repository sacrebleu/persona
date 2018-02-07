class FacadesController < ApplicationController
  def index
    @facade = Facade.first
  end
end
