class User < ApplicationRecord
    validates :email, 
    presence: true,
    confirmation: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    
    has_many :events
end