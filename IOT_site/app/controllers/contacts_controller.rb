class ContactsController < ApplicationController

  before_action :check_permition, only: [:show, :index, :update, :destroy]
  def index
    @contacts = Contact.all
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)
    respond_to do |format|
      if @contact.save
        ContactsMailer.general_message(@contact).deliver_now
        # render :thanks
        format.html { redirect_to new_contact_path, notice: 'The message was successfully sent.' }
        format.json { render :new, status: :created}
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def check_permition
    if !super_user
      redirect_to home_path
    end
  end
  def contacts_params
    params.require(:contact).permit(:username, :name, :email, :message)
  end
    
end