class ApartmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    def index
        render json: Apartment.all
    end

    def show
        render json: Apartment.find_by(params[:number])
    end

    def create
        newApt = Apartment.create!(permit_params)
        render json: newApt, status: :created
    end

    def destroy
        apt = Apartment.find(params[:id])
        apt.destroy
        head :no_content
    end
    
    
    
    private
    
    def permit_params
        
        params.permit(:number)
    end

    def not_found(invalid)
        
        render json: { error: invalid}
    end
end
