class FichequalifierController < ApplicationController
  def index

  @ficheprospect = Ficheprospect.all
  @prospect = Prospect.all	

  end
end
