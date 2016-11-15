class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order(name: :ASC)
  end

  def create
    contact = Contact.new(name: params[:contact][:name],
                    address: params[:contact][:address],
                    phone: params[:contact][:phone],
                    email: params[:contact][:email])
    contact.save
    redirect_to('/contacts')
    # render(:text => contact.attributes)
  end

  def show
    id = params[:id]
    @contact = Contact.find_by(id: id)
  end

end
