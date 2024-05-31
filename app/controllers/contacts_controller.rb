class ContactsController < ApplicationController 

    def index
        @contacts = Contact.all
    end


    def show 
        @user = Contact.find(params[:id])
        @name = @user.email.split('@')[0]
        @contact =  Contact.where(:email => @user.email)
    end
end
