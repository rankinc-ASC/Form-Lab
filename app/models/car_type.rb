class CarType < ApplicationRecord
    # :type
    # [compact, standard, luxury]
    
    has_many :cars
end
