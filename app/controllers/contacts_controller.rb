class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Gracias por tu mensaje!'
    else
      flash.now[:error] = 'No podemos enviar tu mensaje.'
      render :new
    end
  end
end