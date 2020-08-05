class Appointment < ApplicationRecord

    belongs_to :users
    belongs_to :clients
    
end
