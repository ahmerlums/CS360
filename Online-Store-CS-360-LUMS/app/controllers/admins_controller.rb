class AdminsController < ApplicationController
  
  
    def new
    @admin = Admin.new
    end
    
    def create 
  @admin = Admin.new(admin_params) 
  if @admin.save 
    session[:admin_id] = @admin.id 
    redirect_to '/' 
  else 
    redirect_to '/signup' 
   end 
  end
    
    
      def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end
  end
