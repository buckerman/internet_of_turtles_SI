class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)
    
    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      render :thanks
    else
      render :new
    end
  end
  
  def thanks
  end

  private

  def contacts_params
    params.require(:contact).permit(:username, :email, :email, :message)
  end
    
end