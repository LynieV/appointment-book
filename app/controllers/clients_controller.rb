class ClientsController < ApplicationController

    def new
        @client = Client.new
        @client.build_appointment
    end

    def create
        @client = Client.new(client_params)
        @client.user_id = session[:user_id] 
        if @client.save
            redirect_to user_path(@client)
        else
            render :new
        end
    end


    private

    def client_params
        params.require(:client).permit(:first_name, :last_name, :appointment_id, appointment_attributes: [:time])
    end

end
