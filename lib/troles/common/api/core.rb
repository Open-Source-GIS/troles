module Troles::Common::Api
  module Core
    # Access to the Troles operations API
    # @return [Troles::Operations] the operations API object 
    def roles
      @roles ||= Troles::Operations.new(self)
    end       

    # Sets the roles of the subject
    # (see #set_roles)
    def roles= *new_roles
      roles.set_roles new_roles
    end       

    # If this role subject instance should have static (immutable) roles
    def static_roles?
      false
    end
        
    module ClassMethods      
      attr_accessor :valid_roles

      # If all role subjects using this strategy should have static (immutable) roles
      def static_roles?
        false
      end           
    end
  end
end