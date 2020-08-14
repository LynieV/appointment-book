class User < ApplicationRecord

    has_many :appointments
    has_many :clients, through: :appointments

    validates :username, uniqueness: true, presence: true

    has_secure_password

end
