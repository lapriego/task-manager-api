class ApiVersionConstraint
    def initialize(options)
        @version = options[:version]
        @defaut = options[:defaut]
    end
    
    
   def matches?(req)
      @defaut || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
   end  

end
    