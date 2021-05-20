class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find_by(id: params[:id])
    end

    def new
    end

    def create
        Employee.create(filtered_params)
        
        redirect_to employees_path
    end

    def filtered_params
        return params.permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end 
