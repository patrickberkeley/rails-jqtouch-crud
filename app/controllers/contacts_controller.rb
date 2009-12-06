class ContactsController < ApplicationController    
  def index
    @contacts = Contact.all
    respond_to do |format|
      format.html
      format.iphone
    end
  end
  
  def show
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.html
      format.iphone { render :layout => false }
    end
  end
  
  def new
    @contact = Contact.new
    respond_to do |format|
      format.html
      format.iphone { render :layout => false }
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = "Successfully created contact."
      redirect_to @contact
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.html
      format.iphone { render :layout => false }
    end
  end
  
  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Successfully updated contact."
      redirect_to @contact
    else
      render :action => 'edit'
    end
  end
  
  def delete
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.html
      format.iphone { render :layout => false }
    end
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    redirect_to(@contact) and return if params[:cancel]
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_path }
      format.iphone { redirect_to contacts_path }
    end
  end
end
