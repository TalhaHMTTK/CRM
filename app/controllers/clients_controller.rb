class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:name, :email, :phone)
    end

end
