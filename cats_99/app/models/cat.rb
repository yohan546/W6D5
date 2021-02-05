require "action_view"


class Cat < ApplicationRecord
    COLORS = [
        "orange",
        "red",
        "black",
        "white",
        "brown",
        "calico", 
        "grey"
    ]

    include ActionView::Helpers::DateHelper 
    
    validates :birth_date, presence: true
    validates :name, presence: true 
    validates :color, presence: true, inclusion: {in: COLORS }
    validates :sex, presence: true, inclusion: {in: ["M", "F"]  }
    validates :description, presence: true
    
    has_many :cat_rentals,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest

    def age 
        time_ago_in_words(self.birth_date) 
    end
    
    
end