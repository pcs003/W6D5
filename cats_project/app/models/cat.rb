class Cat < ApplicationRecord
    COLORS = ['red','orange','yellow','green','blue','purple','white','brown','black']
    validates :birth_date, :color, :name, :sex, presence:true

    

end
