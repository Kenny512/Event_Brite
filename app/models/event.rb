class Event < ApplicationRecord
    validates :start_date, 
    presence:true

    validates :duration, 
    presence:true
    #multiple de 5

    validates :title, 
    presence:true,
    length: {in: 5..140}

    validates :description, 
    presence:true,
    length: {in: 20..1000}

    validates :price, 
    presence:true,
    length: {in: 1..100}

    validates :location, 
    presence:true

    has_many :attendances
end
