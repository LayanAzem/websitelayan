module SessionsHelper
    
     def log_in(administrator) 
        session[:administrator_id] = administrator.id 
     end    
     
    def current_administrator
        
        @current_administrator ||= Administrator.find_by(id: session[:administrator_id])
    end 
    def logged_in?
            !current_administrator.nil?    
    end
    
    def log_out 
        session.delete(:administrator_id)
        @current_administrator = nil 
    end             
end
