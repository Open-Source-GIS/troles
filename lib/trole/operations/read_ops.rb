module Trole
  module ReadOperations
    # check if the roles list has the given role
    def contains? role_to_compare
      role == role_to_compare
    end
    alias_method :includes?, :contains?

    # symbol list
    def list
    end

    # filter list of symbols 
    # on whether they are present as roles
    def get *roles
    end
  end
end