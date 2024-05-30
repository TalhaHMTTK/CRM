class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable




  after_save :create_crm_contact, if: :saved_change_to_current_sign_in_at?

    private
  
    def update_crm_contact
      Contact.find_or_create_by(email: email) do |contact|
        contact.name = name
      end
    end
end
