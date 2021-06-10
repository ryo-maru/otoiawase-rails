class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "作成しました！"
    else
      render :new
    end
  end
  
  def show

  end

  private
  def contact_params
      params.require(:contact).permit(:name, :Email,:content)
  end

end
