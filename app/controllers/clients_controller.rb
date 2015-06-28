class ClientsController < ApplicationController
  def index
 
  @prospect = Prospect.all
  @client = @prospect.where(tel1prospection: 'oui').includes(:ficheprospect).where.not( :ficheprospects => { :consomationcomplement => 'true' } )
  

  end
end
