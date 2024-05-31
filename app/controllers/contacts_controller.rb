class ContactsController < ApplicationController 

    def index
        @contacts = Contact.all
    end


    def show 
        em = Contact.find(params[:id])
        @contact =  Contact.where(:email => em.email)
    end
end
