class Cat < ApplicationRecord
    COLORS = ['red','orange','yellow','green','blue','purple','white','brown','black']
    validates :birth_date, :color, :name, :sex, presence:true

    has_many :rental_requests,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy
end
