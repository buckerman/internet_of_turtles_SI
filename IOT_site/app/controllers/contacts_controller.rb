class ContactsController < ApplicationController

  before_action :check_permition, only: [:show, :index, :update, :destroy]
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
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

  def show
  end
  private

  def check_permition
    if !super_user
      redirect_to home_path
    end
  end
  def set_contact
    @contact = Contact.find(params[:id])
  end
  def contacts_params
    params.require(:contact).permit(:username, :name, :email, :message)
  end
    
end